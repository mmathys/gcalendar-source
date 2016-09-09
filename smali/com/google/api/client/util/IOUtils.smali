.class public Lcom/google/api/client/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public static computeLength(Lcom/google/api/client/util/StreamingContent;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/google/api/client/util/ByteCountingOutputStream;

    invoke-direct {v0}, Lcom/google/api/client/util/ByteCountingOutputStream;-><init>()V

    .line 113
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/api/client/util/StreamingContent;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v0}, Lcom/google/api/client/util/ByteCountingOutputStream;->close()V

    .line 117
    iget-wide v0, v0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    return-wide v0

    .line 115
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/api/client/util/ByteCountingOutputStream;->close()V

    throw v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/api/client/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 64
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/api/client/util/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 100
    :cond_0
    return-void

    .line 96
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0
.end method
