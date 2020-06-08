view: treasury_account_receivables_details {
  sql_table_name: `poc-looker-dla-msi.SMIG.TREASURY_ACCOUNT_RECEIVABLES_DETAILS`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: account_no {
    type: number
    sql: ${TABLE}.AccountNo ;;
  }

  dimension: acct_doc_no {
    type: number
    sql: ${TABLE}.AcctDocNo ;;
  }

  dimension: amount_doc {
    type: number
    sql: ${TABLE}.AmountDoc ;;
  }

  dimension: amount_lcl {
    type: number
    sql: ${TABLE}.AmountLCL ;;
  }

  dimension: company_code {
    type: number
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: currency_key {
    type: string
    sql: ${TABLE}.CurrencyKey ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: days_in_arrears {
    type: string
    sql: ${TABLE}.DaysInArrears ;;
  }

  dimension_group: document {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DocumentDate ;;
  }

  dimension: dunning_date {
    type: number
    sql: ${TABLE}.DunningDate ;;
  }

  dimension: dunning_level {
    type: number
    sql: ${TABLE}.DunningLevel ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.ExchangeRate ;;
  }

  dimension: invoice_no {
    type: number
    sql: ${TABLE}.InvoiceNo ;;
  }

  dimension: item_text {
    type: string
    sql: ${TABLE}.ItemText ;;
  }

  dimension: line_item {
    type: number
    sql: ${TABLE}.LineItem ;;
  }

  dimension: local_currency {
    type: string
    sql: ${TABLE}.LocalCurrency ;;
  }

  dimension_group: net_due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.NetDueDate ;;
  }

  dimension: period_year {
    type: number
    sql: ${TABLE}.PeriodYear ;;
  }

  dimension_group: posting {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PostingDate ;;
  }

  dimension: receipt_date {
    type: number
    sql: ${TABLE}.ReceiptDate ;;
  }

  dimension: sales_tax_code {
    type: string
    sql: ${TABLE}.SalesTaxCode ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
