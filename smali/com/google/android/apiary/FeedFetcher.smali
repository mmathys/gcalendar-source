.class public Lcom/google/android/apiary/FeedFetcher;
.super Ljava/lang/Object;
.source "FeedFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private volatile mAuthenticationFailed:Z

.field private final mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile mForcedClosed:Z

.field private volatile mIoException:Z

.field private final mItemClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mItemEndMarker:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mItemQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mItemsName:Ljava/lang/String;

.field private final mJsonFactory:Lcom/google/api/client/json/JsonFactory;

.field protected final mLogTag:Ljava/lang/String;

.field private volatile mPartialSyncUnavailable:Z

.field protected final mRequest:Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

.field private volatile mResourceUnavailable:Z

.field private volatile mRetryAfter:J

.field private volatile mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/json/JsonFactory;",
            "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<TT;>;TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 36
    iput-boolean v2, p0, Lcom/google/android/apiary/FeedFetcher;->mAuthenticationFailed:Z

    .line 37
    iput-boolean v2, p0, Lcom/google/android/apiary/FeedFetcher;->mPartialSyncUnavailable:Z

    .line 38
    iput-boolean v2, p0, Lcom/google/android/apiary/FeedFetcher;->mResourceUnavailable:Z

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apiary/FeedFetcher;->mRetryAfter:J

    .line 40
    iput-boolean v2, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    .line 51
    iput-object p1, p0, Lcom/google/android/apiary/FeedFetcher;->mJsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 52
    iput-object p2, p0, Lcom/google/android/apiary/FeedFetcher;->mRequest:Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    .line 53
    iput-object p3, p0, Lcom/google/android/apiary/FeedFetcher;->mItemsName:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/google/android/apiary/FeedFetcher;->mItemClass:Ljava/lang/Class;

    .line 55
    iput-object p5, p0, Lcom/google/android/apiary/FeedFetcher;->mItemQueue:Ljava/util/concurrent/BlockingQueue;

    .line 56
    iput-object p6, p0, Lcom/google/android/apiary/FeedFetcher;->mItemEndMarker:Ljava/lang/Object;

    .line 57
    iput-object p7, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private closeResponse(Lcom/google/api/client/http/HttpResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 210
    return-void
.end method

.method private fetchFeed()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mRequest:Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    invoke-virtual {p0, v0}, Lcom/google/android/apiary/FeedFetcher;->executeUnparsed(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)Lcom/google/api/client/http/HttpResponse;
    :try_end_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 79
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    if-nez v0, :cond_9

    .line 80
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mRequest:Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    invoke-virtual {p0, v0}, Lcom/google/android/apiary/FeedFetcher;->onExecute(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mJsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 82
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    .line 81
    invoke-virtual {v0, v3, v4}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 84
    invoke-virtual {v4}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 85
    invoke-virtual {v4}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    move-object v3, v0

    move-object v0, v2

    .line 87
    :goto_1
    sget-object v5, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-ne v3, v5, :cond_8

    .line 88
    iget-boolean v3, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z
    :try_end_1
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 176
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 177
    iget-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mItemQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/google/android/apiary/FeedFetcher;->mItemEndMarker:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 180
    :cond_0
    if-eqz v1, :cond_1

    .line 182
    :try_start_2
    invoke-direct {p0, v1}, Lcom/google/android/apiary/FeedFetcher;->closeResponse(Lcom/google/api/client/http/HttpResponse;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 188
    :cond_1
    :goto_2
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    iget-object v1, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    const-string v2, "IOException, while closing connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 91
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-virtual {v4}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 93
    const-string v5, "nextPageToken"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 94
    const-class v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    :cond_3
    :goto_3
    invoke-virtual {v4}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v3

    goto :goto_1

    .line 95
    :cond_4
    iget-object v5, p0, Lcom/google/android/apiary/FeedFetcher;->mItemsName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 96
    iget-object v3, p0, Lcom/google/android/apiary/FeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 98
    :goto_4
    invoke-virtual {v4}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 99
    invoke-virtual {v4}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v3

    sget-object v5, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    if-eq v3, v5, :cond_3

    .line 102
    iget-object v3, p0, Lcom/google/android/apiary/FeedFetcher;->mItemQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v5, p0, Lcom/google/android/apiary/FeedFetcher;->mItemClass:Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 120
    :catch_1
    move-exception v0

    .line 121
    :goto_5
    :try_start_4
    iget-object v3, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    const-string v4, "GoogleJsonResponseException, ignoring rest of feed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getStatusCode()I

    move-result v3

    .line 123
    sparse-switch v3, :sswitch_data_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mIoException:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    :goto_6
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 177
    iget-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    if-nez v0, :cond_5

    .line 178
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mItemQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/google/android/apiary/FeedFetcher;->mItemEndMarker:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 180
    :cond_5
    if-eqz v1, :cond_1

    .line 182
    :try_start_5
    invoke-direct {p0, v1}, Lcom/google/android/apiary/FeedFetcher;->closeResponse(Lcom/google/api/client/http/HttpResponse;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 183
    :catch_2
    move-exception v0

    .line 184
    iget-object v1, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    const-string v2, "IOException, while closing connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 105
    :cond_6
    :try_start_6
    invoke-virtual {p0, v4, v3}, Lcom/google/android/apiary/FeedFetcher;->parseField(Lcom/google/api/client/json/JsonParser;Ljava/lang/String;)Z

    move-result v3

    .line 106
    if-nez v3, :cond_3

    .line 108
    invoke-virtual {v4}, Lcom/google/api/client/json/JsonParser;->skipChildren()Lcom/google/api/client/json/JsonParser;
    :try_end_6
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 169
    :catch_3
    move-exception v0

    .line 170
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    const-string v3, "AuthenticationException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mAuthenticationFailed:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 176
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 177
    iget-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    if-nez v0, :cond_7

    .line 178
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mItemQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/google/android/apiary/FeedFetcher;->mItemEndMarker:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 180
    :cond_7
    if-eqz v1, :cond_1

    .line 182
    :try_start_8
    invoke-direct {p0, v1}, Lcom/google/android/apiary/FeedFetcher;->closeResponse(Lcom/google/api/client/http/HttpResponse;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_2

    .line 183
    :catch_4
    move-exception v0

    .line 184
    iget-object v1, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    const-string v2, "IOException, while closing connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 113
    :cond_8
    if-nez v0, :cond_b

    .line 176
    :cond_9
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 177
    iget-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    if-nez v0, :cond_a

    .line 178
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mItemQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/google/android/apiary/FeedFetcher;->mItemEndMarker:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 180
    :cond_a
    if-eqz v1, :cond_1

    .line 182
    :try_start_9
    invoke-direct {p0, v1}, Lcom/google/android/apiary/FeedFetcher;->closeResponse(Lcom/google/api/client/http/HttpResponse;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_2

    .line 183
    :catch_5
    move-exception v0

    .line 184
    iget-object v1, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    const-string v2, "IOException, while closing connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 116
    :cond_b
    :try_start_a
    invoke-direct {p0, v1}, Lcom/google/android/apiary/FeedFetcher;->closeResponse(Lcom/google/api/client/http/HttpResponse;)V

    .line 117
    iget-object v3, p0, Lcom/google/android/apiary/FeedFetcher;->mRequest:Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    const-string v4, "pageToken"

    invoke-virtual {v3, v4, v0}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    .line 118
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mRequest:Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    invoke-virtual {p0, v0}, Lcom/google/android/apiary/FeedFetcher;->executeUnparsed(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)Lcom/google/api/client/http/HttpResponse;
    :try_end_a
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v1

    goto/16 :goto_0

    .line 126
    :sswitch_0
    :try_start_b
    invoke-static {v0}, Lcom/google/android/apiary/FeedFetcher;->isPartialSyncUnavailable(Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mPartialSyncUnavailable:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_6

    .line 176
    :catchall_0
    move-exception v0

    :goto_8
    iget-object v2, p0, Lcom/google/android/apiary/FeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 177
    iget-boolean v2, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    if-nez v2, :cond_c

    .line 178
    iget-object v2, p0, Lcom/google/android/apiary/FeedFetcher;->mItemQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v3, p0, Lcom/google/android/apiary/FeedFetcher;->mItemEndMarker:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 180
    :cond_c
    if-eqz v1, :cond_d

    .line 182
    :try_start_c
    invoke-direct {p0, v1}, Lcom/google/android/apiary/FeedFetcher;->closeResponse(Lcom/google/api/client/http/HttpResponse;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 185
    :cond_d
    :goto_9
    throw v0

    .line 129
    :cond_e
    const/4 v0, 0x1

    :try_start_d
    iput-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mIoException:Z

    goto/16 :goto_6

    .line 133
    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mAuthenticationFailed:Z

    goto/16 :goto_6

    .line 136
    :sswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mPartialSyncUnavailable:Z

    goto/16 :goto_6

    .line 139
    :sswitch_3
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_f

    .line 141
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpHeaders;->getRetryAfter()Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v2

    .line 146
    :cond_f
    if-eqz v2, :cond_11

    .line 148
    :try_start_e
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/apiary/FeedFetcher;->mRetryAfter:J
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 163
    :goto_a
    const/4 v0, 0x1

    :try_start_f
    iput-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mResourceUnavailable:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_6

    .line 150
    :catch_6
    move-exception v0

    .line 153
    :try_start_10
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 154
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 155
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/apiary/FeedFetcher;->mRetryAfter:J
    :try_end_10
    .catch Landroid/util/TimeFormatException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_a

    .line 156
    :catch_7
    move-exception v0

    .line 157
    :try_start_11
    iget-object v3, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    const-string v4, "Unable to parse "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-static {v3, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_10
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_b

    .line 161
    :cond_11
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    const-string v2, "No Retry-After header"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 172
    :catch_8
    move-exception v0

    move-object v1, v2

    .line 173
    :goto_c
    iget-object v2, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    const-string v3, "IOException, ignoring rest of feed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mIoException:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 176
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 177
    iget-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    if-nez v0, :cond_12

    .line 178
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mItemQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/google/android/apiary/FeedFetcher;->mItemEndMarker:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 180
    :cond_12
    if-eqz v1, :cond_1

    .line 182
    :try_start_12
    invoke-direct {p0, v1}, Lcom/google/android/apiary/FeedFetcher;->closeResponse(Lcom/google/api/client/http/HttpResponse;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_2

    .line 183
    :catch_9
    move-exception v0

    .line 184
    iget-object v1, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    const-string v2, "IOException, while closing connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 183
    :catch_a
    move-exception v1

    .line 184
    iget-object v2, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    const-string v3, "IOException, while closing connection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 176
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8

    .line 172
    :catch_b
    move-exception v0

    goto :goto_c

    .line 169
    :catch_c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_7

    .line 120
    :catch_d
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x19a -> :sswitch_2
        0x1f7 -> :sswitch_3
    .end sparse-switch
.end method

.method private static isPartialSyncUnavailable(Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;)Z
    .locals 3

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getErrors()Ljava/util/List;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_1

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;

    .line 271
    const-string v2, "updatedMinTooLongAgo"

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mThread:Ljava/lang/Thread;

    .line 242
    if-eqz v0, :cond_0

    .line 243
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    .line 244
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 246
    :cond_0
    return-void
.end method

.method protected executeUnparsed(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRetryAfter()J
    .locals 2

    .prologue
    .line 258
    iget-wide v0, p0, Lcom/google/android/apiary/FeedFetcher;->mRetryAfter:J

    return-wide v0
.end method

.method public isAuthenticationFailed()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mAuthenticationFailed:Z

    return v0
.end method

.method public isIoException()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mIoException:Z

    return v0
.end method

.method public isPartialSyncUnavailable()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mPartialSyncUnavailable:Z

    return v0
.end method

.method public isResourceUnavailable()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mResourceUnavailable:Z

    return v0
.end method

.method protected onExecute(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method protected parseField(Lcom/google/api/client/json/JsonParser;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x30

    const/4 v2, 0x2

    .line 61
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mThread:Ljava/lang/Thread;

    .line 62
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apiary/FeedFetcher;->fetchFeed()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iput-object v1, p0, Lcom/google/android/apiary/FeedFetcher;->mThread:Ljava/lang/Thread;

    .line 69
    iget-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "FeedFetcher thread ended: mForcedClosed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 68
    iput-object v1, p0, Lcom/google/android/apiary/FeedFetcher;->mThread:Ljava/lang/Thread;

    .line 69
    iget-boolean v0, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "FeedFetcher thread ended: mForcedClosed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/apiary/FeedFetcher;->mThread:Ljava/lang/Thread;

    .line 69
    iget-boolean v1, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/google/android/apiary/FeedFetcher;->mLogTag:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/apiary/FeedFetcher;->mForcedClosed:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "FeedFetcher thread ended: mForcedClosed is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v0
.end method

.method public waitForEnvelope()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/apiary/FeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 237
    return-void
.end method
