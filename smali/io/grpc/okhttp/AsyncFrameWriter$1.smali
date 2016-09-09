.class Lio/grpc/okhttp/AsyncFrameWriter$1;
.super Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;
.source "AsyncFrameWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/AsyncFrameWriter;->connectionPreface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/AsyncFrameWriter;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/AsyncFrameWriter;)V
    .locals 1

    .prologue
    .line 79
    iput-object p1, p0, Lio/grpc/okhttp/AsyncFrameWriter$1;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;Lio/grpc/okhttp/AsyncFrameWriter$1;)V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter$1;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/AsyncFrameWriter;->access$100(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->connectionPreface()V

    .line 83
    return-void
.end method
