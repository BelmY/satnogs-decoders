meta:
  id: qbee
  endian: le

doc: |
  :field qbee_wod_time: beacon_data.qbee_wod.qbee_wod_time
  :field qbee_wod_mode: beacon_data.qbee_wod.qbee_wod_mode
  :field qbee_wod_voltage_battery: beacon_data.qbee_wod.qbee_wod_voltage_battery
  :field qbee_wod_current_battery: beacon_data.qbee_wod.qbee_wod_current_battery
  :field qbee_wod_current_3v3: beacon_data.qbee_wod.qbee_wod_current_3v3
  :field qbee_wod_current_5v: beacon_data.qbee_wod.qbee_wod_current_5v
  :field qbee_wod_temperature_comms: beacon_data.qbee_wod.qbee_wod_temperature_comms
  :field qbee_wod_temperature_eps: beacon_data.qbee_wod.qbee_wod_temperature_eps
  :field qbee_wod_temperature_battery: beacon_data.qbee_wod.qbee_wod_temperature_battery
  :field qbee_pwr_info_adcs: beacon_data.qbee_power_info.qbee_pwr_info_adcs
  :field qbee_pwr_info_fipex: beacon_data.qbee_power_info.qbee_pwr_info_fipex
  :field qbee_pwr_info_gps: beacon_data.qbee_power_info.qbee_pwr_info_gps
  :field qbee_pwr_info_ocobc: beacon_data.qbee_power_info.qbee_pwr_info_ocobc
  :field qbee_service_enabled_adcs: beacon_data.qbee_service_enabled.qbee_service_enabled_adcs
  :field qbee_service_enabled_fipex: beacon_data.qbee_service_enabled.qbee_service_enabled_fipex
  :field qbee_service_enabled_ocobc: beacon_data.qbee_service_enabled.qbee_service_enabled_ocobc
  :field qbee_service_running_adcs: beacon_data.qbee_service_running.qbee_service_running_adcs
  :field qbee_service_running_fipex: beacon_data.qbee_service_running.qbee_service_running_fipex
  :field qbee_service_running_ocobc: beacon_data.qbee_service_running.qbee_service_running_ocobc

seq:
  - id:   ax_header
    type: ax_header

  - id:   csp_header
    size: 4

  - id:   beacon_data
    type: beacon_data
    doc-ref: https://github.com/opencosmos/qb01-beacon-decoder/blob/master/QB50%20SE01%20beacon%20description%20-%20Open%20Cosmos.pdf

  - id:   rs_parity
    size: 32

types:
  ax_header:
    seq:
      - id: qbee_destination
        type: str
        encoding: ASCII
        size: 6

      - id: qbee_destination_ssid
        type: u1

      - id: qbee_source
        type: str
        encoding: ASCII
        size: 6

      - id: qbee_source_ssid
        type: u1

      - id: qbee_control
        type: u1

      - id: qbee_pid
        type: u1

  beacon_data:
    seq:
      - id:   qbee_wod
        type: qbee_wod

      - id:   qbee_power_info
        type: qbee_power_info

      - id:   qbee_service_enabled
        type: qbee_service_enabled

      - id:   qbee_service_running
        type: qbee_service_running

      - id:   qbee_reserved
        size: 14

  qbee_wod:
      seq:
      - id:   qbee_wod_time
        type: u4
        doc-ref: https://www.qb50.eu/index.php/tech-docs/category/QB50%20Whole%20Orbit%20Data%20-%20Iss42aac.pdf?download=80:whole-orbital-data-issue-4

      - id:   qbee_wod_mode
        type: u1

      - id:   qbee_wod_voltage_battery
        type: u1

      - id:   qbee_wod_current_battery
        type: u1

      - id:   qbee_wod_current_3v3
        type: u1

      - id:   qbee_wod_current_5v
        type: u1

      - id:   qbee_wod_temperature_comms
        type: u1

      - id:   qbee_wod_temperature_eps
        type: u1

      - id:   qbee_wod_temperature_battery
        type: u1


  qbee_power_info:
    seq:
      - id:   qbee_pwr_info_adcs
        type: b1

      - id:   qbee_pwr_info_fipex
        type: b1

      - id:   qbee_pwr_info_gps
        type: b1

      - id:   qbee_pwr_info_ocobc
        type: b1

      - id:   qbee_pwr_info_reserved
        type: b4

  qbee_service_enabled:
    seq:
      - id: qbee_service_enabled_adcs
        type: b1

      - id: qbee_service_enabled_fipex
        type: b1

      - id: qbee_service_enabled_ocobc
        type: b1

      - id: qbee_service_enabled_reserved
        type: b5

  qbee_service_running:
    seq:
      - id: qbee_service_running_adcs
        type: b1

      - id: qbee_service_running_fipex
        type: b1

      - id: qbee_service_running_ocobc
        type: b1

      - id: qbee_service_running_reserved
        type: b5
