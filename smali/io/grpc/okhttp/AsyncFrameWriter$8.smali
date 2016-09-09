.class Lio/grpc/okhttp/AsyncFrameWriter$8;
.super Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;
.source "AsyncFrameWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/AsyncFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/AsyncFrameWriter;

.field final synthetic val$errorCode:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method constructor <init>(Lio/grpc/okhttp/AsyncFrameWriter;ILio/grpc/okhttp/internal/framed/ErrorCode;)V
    .locals 1

    .prologue
    .line 152
    iput-object p1, p0, Lio/grpc/okhttp/AsyncFrameWriter$8;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    iput p2, p0, Lio/grpc/okhttp/AsyncFrameWriter$8;->val$streamId:I

    iput-object p3, p0, Lio/grpc/okhttp/AsyncFrameWriter$8;->val$errorCode:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;Lio/grpc/okhttp/AsyncFrameWriter$1;)V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter$8;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/AsyncFrameWriter;->access$100(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    iget v1, p0, Lio/grpc/okhttp/AsyncFrameWriter$8;->val$streamId:I

    iget-object v2, p0, Lio/grpc/okhttp/AsyncFrameWriter$8;->val$errorCode:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-interface {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/FrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 156
    return-void
.end method
