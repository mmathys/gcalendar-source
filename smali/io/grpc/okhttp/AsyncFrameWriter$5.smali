.class Lio/grpc/okhttp/AsyncFrameWriter$5;
.super Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;
.source "AsyncFrameWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/AsyncFrameWriter;->synStream(ZZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/AsyncFrameWriter;

.field final synthetic val$associatedStreamId:I

.field final synthetic val$headerBlock:Ljava/util/List;

.field final synthetic val$inFinished:Z

.field final synthetic val$outFinished:Z

.field final synthetic val$streamId:I


# direct methods
.method constructor <init>(Lio/grpc/okhttp/AsyncFrameWriter;ZZIILjava/util/List;)V
    .locals 1

    .prologue
    .line 121
    iput-object p1, p0, Lio/grpc/okhttp/AsyncFrameWriter$5;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    iput-boolean p2, p0, Lio/grpc/okhttp/AsyncFrameWriter$5;->val$outFinished:Z

    iput-boolean p3, p0, Lio/grpc/okhttp/AsyncFrameWriter$5;->val$inFinished:Z

    iput p4, p0, Lio/grpc/okhttp/AsyncFrameWriter$5;->val$streamId:I

    iput p5, p0, Lio/grpc/okhttp/AsyncFrameWriter$5;->val$associatedStreamId:I

    iput-object p6, p0, Lio/grpc/okhttp/AsyncFrameWriter$5;->val$headerBlock:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;Lio/grpc/okhttp/AsyncFrameWriter$1;)V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter$5;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/AsyncFrameWriter;->access$100(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/okhttp/AsyncFrameWriter$5;->val$outFinished:Z

    iget-boolean v2, p0, Lio/grpc/okhttp/AsyncFrameWriter$5;->val$inFinished:Z

    iget v3, p0, Lio/grpc/okhttp/AsyncFrameWriter$5;->val$streamId:I

    iget v4, p0, Lio/grpc/okhttp/AsyncFrameWriter$5;->val$associatedStreamId:I

    iget-object v5, p0, Lio/grpc/okhttp/AsyncFrameWriter$5;->val$headerBlock:Ljava/util/List;

    invoke-interface/range {v0 .. v5}, Lio/grpc/okhttp/internal/framed/FrameWriter;->synStream(ZZIILjava/util/List;)V

    .line 125
    return-void
.end method
