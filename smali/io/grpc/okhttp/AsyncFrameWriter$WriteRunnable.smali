.class abstract Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;
.super Ljava/lang/Object;
.source "AsyncFrameWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/AsyncFrameWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "WriteRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/AsyncFrameWriter;


# direct methods
.method private constructor <init>(Lio/grpc/okhttp/AsyncFrameWriter;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/okhttp/AsyncFrameWriter;Lio/grpc/okhttp/AsyncFrameWriter$1;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;)V

    return-void
.end method


# virtual methods
.method public abstract doRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/AsyncFrameWriter;->access$100(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to perform write due to unavailable frameWriter."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    iget-object v1, p0, Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->transport:Lio/grpc/okhttp/OkHttpClientTransport;
    invoke-static {v1}, Lio/grpc/okhttp/AsyncFrameWriter;->access$400(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/OkHttpClientTransport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->onException(Ljava/lang/Throwable;)V

    .line 244
    :goto_0
    return-void

    .line 238
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;->doRun()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 241
    :catch_1
    move-exception v0

    .line 242
    iget-object v1, p0, Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;->this$0:Lio/grpc/okhttp/AsyncFrameWriter;

    # getter for: Lio/grpc/okhttp/AsyncFrameWriter;->transport:Lio/grpc/okhttp/OkHttpClientTransport;
    invoke-static {v1}, Lio/grpc/okhttp/AsyncFrameWriter;->access$400(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/OkHttpClientTransport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->onException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
