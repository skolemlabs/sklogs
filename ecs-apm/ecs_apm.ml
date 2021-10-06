let of_span (span : Skapm.Span.t) =
  Ecs.trace [ Span_id span.id; Trace_id span.trace_id ]

let of_transaction (transaction : Skapm.Transaction.t) =
  Ecs.trace [ Transaction_id transaction.id; Trace_id transaction.trace_id ]
