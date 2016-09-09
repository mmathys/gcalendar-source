.class Lio/grpc/okhttp/AsyncFrameWriter$13;
.super Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;
.source "AsyncFrameWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/AsyncFrameWriter;->windowUpdate(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/AsyncFrameWriter;

.field final synthetic val$streamId:I

.field final synthetic val$windowSizeIncrement:J


# direct methods
.method constructor <init>(Lio/grpc/okhttp/AsyncFrameWriter;IJ)V
    .locals 1

    .prologue
    .line 206
    iput-object p1, p0, Lio/grpc/okhttp/AsyncFrameWriter$13;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    iput p2, p0, Lio/grpc/okhttp/AsyncFrameWriter$13;->val$streamId:I

    iput-wide p3, p0, Lio/grpc/okhttp/AsyncFrameWriter$13;->val$windowSizeIncrement:J

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
    .line 209
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter$13;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/AsyncFrameWriter;->access$100(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    iget v1, p0, Lio/grpc/okhttp/AsyncFrameWriter$13;->val$streamId:I

    iget-wide v2, p0, Lio/grpc/okhttp/AsyncFrameWriter$13;->val$windowSizeIncrement:J

    invoke-interface {v0, v1, v2, v3}, Lio/grpc/okhttp/internal/framed/FrameWriter;->windowUpdate(IJ)V

    .line 210
    return-void
.end method
