.class Lio/grpc/okhttp/AsyncFrameWriter$10;
.super Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;
.source "AsyncFrameWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/AsyncFrameWriter;->settings(Lio/grpc/okhttp/internal/framed/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/AsyncFrameWriter;

.field final synthetic val$okHttpSettings:Lio/grpc/okhttp/internal/framed/Settings;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/AsyncFrameWriter;Lio/grpc/okhttp/internal/framed/Settings;)V
    .locals 1

    .prologue
    .line 173
    iput-object p1, p0, Lio/grpc/okhttp/AsyncFrameWriter$10;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    iput-object p2, p0, Lio/grpc/okhttp/AsyncFrameWriter$10;->val$okHttpSettings:Lio/grpc/okhttp/internal/framed/Settings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;Lio/grpc/okhttp/AsyncFrameWriter$1;)V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter$10;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/AsyncFrameWriter;->access$100(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/okhttp/AsyncFrameWriter$10;->val$okHttpSettings:Lio/grpc/okhttp/internal/framed/Settings;

    invoke-interface {v0, v1}, Lio/grpc/okhttp/internal/framed/FrameWriter;->settings(Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 177
    return-void
.end method
