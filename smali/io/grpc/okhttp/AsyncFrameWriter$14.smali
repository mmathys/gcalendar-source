.class Lio/grpc/okhttp/AsyncFrameWriter$14;
.super Ljava/lang/Object;
.source "AsyncFrameWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/AsyncFrameWriter;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/AsyncFrameWriter;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/AsyncFrameWriter;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lio/grpc/okhttp/AsyncFrameWriter$14;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter$14;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/AsyncFrameWriter;->access$100(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter$14;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/AsyncFrameWriter;->access$100(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->close()V

    .line 222
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter$14;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->socket:Ljava/net/Socket;
    invoke-static {v0}, Lio/grpc/okhttp/AsyncFrameWriter;->access$200(Lio/grpc/okhttp/AsyncFrameWriter;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/okhttp/AsyncFrameWriter;->access$300()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Failed closing connection"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
