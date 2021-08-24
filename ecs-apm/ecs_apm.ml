let of_span (span : Elastic_apm.Span.t) =
  Ecs.trace [ Span_id span.id; Trace_id span.trace_id ]

let of_transaction (transaction : Elastic_apm.Transaction.t) =
  Ecs.trace [ Transaction_id transaction.id; Trace_id transaction.trace_id ]
