
architecture


[ User ] <--> [ Next.js UI ] <--> [ FastAPI Backend ]
                                      |         |
                                      |    [ Qdrant Vector DB ]
                                      |         |
                               [ Local Embedder / LLM ]


Trade-off

-Dockerization: I used Docker Compose to ensure "one-command" reproducibility. This trades off a bit of startup time for a much more stable "it works on my machine" experience for the reviewers.

-Stub LLM: To prioritize building a stable RAG pipeline without being blocked by API outages or key expirations, I utilized the Stub mode for logic verification.

Ship Next
-Streaming Responses: Implement Server-Sent Events (SSE) so the user sees the answer "typing" in real-time, improving perceived performance (UX).
-Advanced UI Feedback: Add "Thumbs Up/Down" on answers to collect user feedback for RAG evaluation (RLHF).