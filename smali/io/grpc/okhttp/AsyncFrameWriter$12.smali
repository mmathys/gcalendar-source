.class Lio/grpc/okhttp/AsyncFrameWriter$12;
.super Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;
.source "AsyncFrameWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/AsyncFrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/AsyncFrameWriter;

.field final synthetic val$debugData:[B

.field final synthetic val$errorCode:Lio/grpc/okhttp/internal/framed/ErrorCode;

.field final synthetic val$lastGoodStreamId:I


# direct methods
.method constructor <init>(Lio/grpc/okhttp/AsyncFrameWriter;ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V
    .locals 1

    .prologue
    .line 194
    iput-object p1, p0, Lio/grpc/okhttp/AsyncFrameWriter$12;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    iput p2, p0, Lio/grpc/okhttp/AsyncFrameWriter$12;->val$lastGoodStreamId:I

    iput-object p3, p0, Lio/grpc/okhttp/AsyncFrameWriter$12;->val$errorCode:Lio/grpc/okhttp/internal/framed/ErrorCode;

    iput-object p4, p0, Lio/grpc/okhttp/AsyncFrameWriter$12;->val$debugData:[B

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
    .line 197
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter$12;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/AsyncFrameWriter;->access$100(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    iget v1, p0, Lio/grpc/okhttp/AsyncFrameWriter$12;->val$lastGoodStreamId:I

    iget-object v2, p0, Lio/grpc/okhttp/AsyncFrameWriter$12;->val$errorCode:Lio/grpc/okhttp/internal/framed/ErrorCode;

    iget-object v3, p0, Lio/grpc/okhttp/AsyncFrameWriter$12;->val$debugData:[B

    invoke-interface {v0, v1, v2, v3}, Lio/grpc/okhttp/internal/framed/FrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    .line 199
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter$12;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/AsyncFrameWriter;->access$100(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->flush()V

    .line 200
    return-void
.end method
