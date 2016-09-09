.class Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
.super Ljava/lang/Object;
.source "OkHttpClientTransport.java"

# interfaces
.implements Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpClientTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientFrameHandler"
.end annotation


# instance fields
.field firstSettings:Z

.field frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

.field final synthetic this$0:Lio/grpc/okhttp/OkHttpClientTransport;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V
    .locals 1

    .prologue
    .line 730
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->firstSettings:Z

    .line 731
    iput-object p2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    .line 732
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .prologue
    .line 891
    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 775
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0, p2}, Lio/grpc/okhttp/OkHttpClientTransport;->getStream(I)Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object v0

    .line 776
    if-nez v0, :cond_2

    .line 777
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0, p2}, Lio/grpc/okhttp/OkHttpClientTransport;->mayHaveCreatedStream(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$900(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/AsyncFrameWriter;

    move-result-object v0

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, p2, v1}, Lio/grpc/okhttp/AsyncFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 779
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 796
    :goto_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1800(Lio/grpc/okhttp/OkHttpClientTransport;)I

    move-result v1

    add-int/2addr v1, p4

    # setter for: Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I
    invoke-static {v0, v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1802(Lio/grpc/okhttp/OkHttpClientTransport;I)I

    .line 797
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1800(Lio/grpc/okhttp/OkHttpClientTransport;)I

    move-result v0

    const/16 v1, 0x7fff

    if-lt v0, v1, :cond_0

    .line 798
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$900(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/AsyncFrameWriter;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1800(Lio/grpc/okhttp/OkHttpClientTransport;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v6, v2, v3}, Lio/grpc/okhttp/AsyncFrameWriter;->windowUpdate(IJ)V

    .line 799
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # setter for: Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I
    invoke-static {v0, v6}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1802(Lio/grpc/okhttp/OkHttpClientTransport;I)I

    .line 801
    :cond_0
    :goto_1
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received data for unknown stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lio/grpc/okhttp/OkHttpClientTransport;->onError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1700(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 786
    :cond_2
    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lokio/BufferedSource;->require(J)V

    .line 788
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 789
    invoke-interface {p3}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v2

    int-to-long v4, p4

    invoke-virtual {v1, v2, v4, v5}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 790
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$400(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 791
    :try_start_0
    invoke-virtual {v0, v1, p1}, Lio/grpc/okhttp/OkHttpClientStream;->transportDataReceived(Lokio/Buffer;Z)V

    .line 792
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 3

    .prologue
    .line 895
    iget v0, p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lio/grpc/internal/GrpcUtil$Http2Error;->statusForCode(J)Lio/grpc/Status;

    move-result-object v0

    const-string v1, "Received Goaway"

    .line 896
    invoke-virtual {v0, v1}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 897
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 899
    invoke-virtual {p3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 901
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    const/4 v2, 0x0

    # invokes: Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    invoke-static {v1, p1, v2, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1400(Lio/grpc/okhttp/OkHttpClientTransport;ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    .line 902
    return-void
.end method

.method public headers(ZZIILjava/util/List;Lio/grpc/okhttp/internal/framed/HeadersMode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;",
            "Lio/grpc/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 813
    const/4 v1, 0x0

    .line 814
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$400(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 815
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1900(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpClientStream;

    .line 816
    if-nez v0, :cond_2

    .line 817
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0, p3}, Lio/grpc/okhttp/OkHttpClientTransport;->mayHaveCreatedStream(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$900(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/AsyncFrameWriter;

    move-result-object v0

    sget-object v3, Lio/grpc/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, p3, v3}, Lio/grpc/okhttp/AsyncFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    move v0, v1

    .line 825
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received header for unknown stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lio/grpc/okhttp/OkHttpClientTransport;->onError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1700(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 830
    :cond_0
    return-void

    .line 820
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 823
    :cond_2
    :try_start_1
    invoke-virtual {v0, p5, p2}, Lio/grpc/okhttp/OkHttpClientStream;->transportHeadersReceived(Ljava/util/List;Z)V

    move v0, v1

    goto :goto_0

    .line 825
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ping(ZII)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 863
    if-nez p1, :cond_1

    .line 864
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$900(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/AsyncFrameWriter;

    move-result-object v0

    invoke-virtual {v0, v1, p2, p3}, Lio/grpc/okhttp/AsyncFrameWriter;->ping(ZII)V

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    int-to-long v2, p2

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    int-to-long v4, p3

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 868
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$400(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 869
    :try_start_0
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;
    invoke-static {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2100(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/Http2Ping;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 870
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;
    invoke-static {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2100(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/Http2Ping;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/internal/Http2Ping;->payload()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    .line 871
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2100(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/Http2Ping;

    move-result-object v0

    .line 872
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    const/4 v3, 0x0

    # setter for: Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;
    invoke-static {v2, v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2102(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/internal/Http2Ping;)Lio/grpc/internal/Http2Ping;

    .line 880
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {v0}, Lio/grpc/internal/Http2Ping;->complete()Z

    goto :goto_0

    .line 874
    :cond_2
    :try_start_1
    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1500()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Received unexpected ping ack. Expecting %d, got %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 875
    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;
    invoke-static {v9}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2100(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/Http2Ping;

    move-result-object v9

    invoke-virtual {v9}, Lio/grpc/internal/Http2Ping;->payload()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    .line 874
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 878
    :cond_3
    :try_start_2
    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1500()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "Received unexpected ping ack. No ping outstanding"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public priority(IIIZ)V
    .locals 0

    .prologue
    .line 948
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 908
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$900(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/AsyncFrameWriter;

    move-result-object v0

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, p1, v1}, Lio/grpc/okhttp/AsyncFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 909
    return-void
.end method

.method public rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V
    .locals 3

    .prologue
    .line 834
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpClientTransport;->toGrpcStatus(Lio/grpc/okhttp/internal/framed/ErrorCode;)Lio/grpc/Status;

    move-result-object v1

    const-string v2, "Rst Stream"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lio/grpc/okhttp/OkHttpClientTransport;->finishStream(ILio/grpc/Status;Lio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 835
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 736
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 737
    sget-boolean v0, Lio/grpc/internal/GrpcUtil;->IS_RESTRICTED_APPENGINE:Z

    if-nez v0, :cond_0

    .line 738
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "OkHttpClientTransport"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 742
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v0, p0}, Lio/grpc/okhttp/internal/framed/FrameReader;->nextFrame(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1300(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/KeepAliveManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1300(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/KeepAliveManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onDataReceived()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 752
    :catch_0
    move-exception v0

    .line 754
    :try_start_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    const/4 v3, 0x0

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v5, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    invoke-virtual {v5, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    # invokes: Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    invoke-static {v1, v3, v4, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1400(Lio/grpc/okhttp/OkHttpClientTransport;ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    :try_start_2
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 761
    :goto_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1600(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportTerminated()V

    .line 762
    sget-boolean v0, Lio/grpc/internal/GrpcUtil;->IS_RESTRICTED_APPENGINE:Z

    if-nez v0, :cond_1

    .line 764
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 767
    :cond_1
    :goto_2
    return-void

    .line 750
    :cond_2
    :try_start_3
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    const/4 v1, 0x0

    sget-object v3, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v4, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v5, "End of stream or IOException"

    .line 751
    invoke-virtual {v4, v5}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v4

    .line 750
    # invokes: Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    invoke-static {v0, v1, v3, v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1400(Lio/grpc/okhttp/OkHttpClientTransport;ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 757
    :try_start_4
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 761
    :goto_3
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1600(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportTerminated()V

    .line 762
    sget-boolean v0, Lio/grpc/internal/GrpcUtil;->IS_RESTRICTED_APPENGINE:Z

    if-nez v0, :cond_1

    .line 764
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_2

    .line 758
    :catch_1
    move-exception v0

    .line 759
    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1500()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Exception closing frame reader"

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 758
    :catch_2
    move-exception v0

    .line 759
    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1500()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Exception closing frame reader"

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 756
    :catchall_0
    move-exception v0

    .line 757
    :try_start_5
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v1}, Lio/grpc/okhttp/internal/framed/FrameReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 761
    :goto_4
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1600(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportTerminated()V

    .line 762
    sget-boolean v1, Lio/grpc/internal/GrpcUtil;->IS_RESTRICTED_APPENGINE:Z

    if-nez v1, :cond_3

    .line 764
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_3
    throw v0

    .line 758
    :catch_3
    move-exception v1

    .line 759
    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1500()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "Exception closing frame reader"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public settings(ZLio/grpc/okhttp/internal/framed/Settings;)V
    .locals 3

    .prologue
    .line 839
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$400(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 840
    const/4 v0, 0x4

    :try_start_0
    invoke-static {p2, v0}, Lio/grpc/okhttp/OkHttpSettingsUtil;->isSet(Lio/grpc/okhttp/internal/framed/Settings;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lio/grpc/okhttp/OkHttpSettingsUtil;->get(Lio/grpc/okhttp/internal/framed/Settings;I)I

    move-result v0

    .line 843
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # setter for: Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I
    invoke-static {v2, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$502(Lio/grpc/okhttp/OkHttpClientTransport;I)I

    .line 846
    :cond_0
    const/4 v0, 0x7

    invoke-static {p2, v0}, Lio/grpc/okhttp/OkHttpSettingsUtil;->isSet(Lio/grpc/okhttp/internal/framed/Settings;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    const/4 v0, 0x7

    invoke-static {p2, v0}, Lio/grpc/okhttp/OkHttpSettingsUtil;->get(Lio/grpc/okhttp/internal/framed/Settings;I)I

    move-result v0

    .line 849
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;
    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2000(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/grpc/okhttp/OutboundFlowController;->initialOutboundWindowSize(I)V

    .line 851
    :cond_1
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->firstSettings:Z

    if-eqz v0, :cond_2

    .line 852
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1600(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportReady()V

    .line 853
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->firstSettings:Z

    .line 855
    :cond_2
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # invokes: Lio/grpc/okhttp/OkHttpClientTransport;->startPendingStreams()Z
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$600(Lio/grpc/okhttp/OkHttpClientTransport;)Z

    .line 856
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$900(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/AsyncFrameWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/grpc/okhttp/AsyncFrameWriter;->ackSettings(Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 859
    return-void

    .line 856
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public windowUpdate(IJ)V
    .locals 6

    .prologue
    .line 913
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    .line 914
    const-string v0, "Received 0 flow control window increment."

    .line 915
    if-nez p1, :cond_1

    .line 916
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    # invokes: Lio/grpc/okhttp/OkHttpClientTransport;->onError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1700(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 919
    invoke-virtual {v2, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 918
    invoke-virtual {v1, p1, v0, v2}, Lio/grpc/okhttp/OkHttpClientTransport;->finishStream(ILio/grpc/Status;Lio/grpc/okhttp/internal/framed/ErrorCode;)V

    goto :goto_0

    .line 924
    :cond_2
    const/4 v1, 0x0

    .line 925
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$400(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 926
    if-nez p1, :cond_3

    .line 927
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2000(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v0

    const/4 v1, 0x0

    long-to-int v3, p2

    invoke-virtual {v0, v1, v3}, Lio/grpc/okhttp/OutboundFlowController;->windowUpdate(Lio/grpc/okhttp/OkHttpClientStream;I)V

    .line 928
    monitor-exit v2

    goto :goto_0

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 931
    :cond_3
    :try_start_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1900(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpClientStream;

    .line 932
    if-eqz v0, :cond_4

    .line 933
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;
    invoke-static {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2000(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v3

    long-to-int v4, p2

    invoke-virtual {v3, v0, v4}, Lio/grpc/okhttp/OutboundFlowController;->windowUpdate(Lio/grpc/okhttp/OkHttpClientStream;I)V

    move v0, v1

    .line 937
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 938
    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received window_update for unknown stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lio/grpc/okhttp/OkHttpClientTransport;->onError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1700(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 934
    :cond_4
    :try_start_2
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0, p1}, Lio/grpc/okhttp/OkHttpClientTransport;->mayHaveCreatedStream(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 935
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method
