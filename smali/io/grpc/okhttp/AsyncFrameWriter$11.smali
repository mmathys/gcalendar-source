.class Lio/grpc/okhttp/AsyncFrameWriter$11;
.super Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;
.source "AsyncFrameWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/AsyncFrameWriter;->ping(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/AsyncFrameWriter;

.field final synthetic val$ack:Z

.field final synthetic val$payload1:I

.field final synthetic val$payload2:I


# direct methods
.method constructor <init>(Lio/grpc/okhttp/AsyncFrameWriter;ZII)V
    .locals 1

    .prologue
    .line 183
    iput-object p1, p0, Lio/grpc/okhttp/AsyncFrameWriter$11;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    iput-boolean p2, p0, Lio/grpc/okhttp/AsyncFrameWriter$11;->val$ack:Z

    iput p3, p0, Lio/grpc/okhttp/AsyncFrameWriter$11;->val$payload1:I

    iput p4, p0, Lio/grpc/okhttp/AsyncFrameWriter$11;->val$payload2:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;Lio/grpc/okhttp/AsyncFrameWriter$1;)V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter$11;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/AsyncFrameWriter;->access$100(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/okhttp/AsyncFrameWriter$11;->val$ack:Z

    iget v2, p0, Lio/grpc/okhttp/AsyncFrameWriter$11;->val$payload1:I

    iget v3, p0, Lio/grpc/okhttp/AsyncFrameWriter$11;->val$payload2:I

    invoke-interface {v0, v1, v2, v3}, Lio/grpc/okhttp/internal/framed/FrameWriter;->ping(ZII)V

    .line 187
    return-void
.end method
