.class Lcom/google/android/calendar/event/AttributedImageHelper$1;
.super Landroid/os/AsyncTask;
.source "AttributedImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/AttributedImageHelper;->fetch(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/AttributedImageHelper;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$language:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/AttributedImageHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/android/calendar/event/AttributedImageHelper$1;->this$0:Lcom/google/android/calendar/event/AttributedImageHelper;

    iput-object p2, p0, Lcom/google/android/calendar/event/AttributedImageHelper$1;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/calendar/event/AttributedImageHelper$1;->val$language:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/AttributedImageHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 321
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/google/android/calendar/event/AttributedImageHelper$1;->val$imageUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 323
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 326
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 327
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    const-string v1, "AttributedImageHelper"

    const-string v2, "MalformedUrl"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 337
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 329
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 330
    const-string v1, "AttributedImageHelper"

    const-string v2, "json: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_2

    .line 334
    :catch_1
    move-exception v0

    .line 335
    const-string v1, "AttributedImageHelper"

    const-string v2, "IOException"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 317
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/AttributedImageHelper$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$1;->this$0:Lcom/google/android/calendar/event/AttributedImageHelper;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/AttributedImageHelper;->onImageMetadataLoadFailed()V

    .line 358
    :goto_0
    return-void

    .line 349
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$1;->this$0:Lcom/google/android/calendar/event/AttributedImageHelper;

    iget-object v1, p0, Lcom/google/android/calendar/event/AttributedImageHelper$1;->val$language:Ljava/lang/String;

    new-instance v2, Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;

    invoke-direct {v2, p1}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/event/AttributedImageHelper;->getAttributionSegments(Ljava/lang/String;Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 357
    :goto_1
    iget-object v1, p0, Lcom/google/android/calendar/event/AttributedImageHelper$1;->this$0:Lcom/google/android/calendar/event/AttributedImageHelper;

    new-instance v2, Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;

    invoke-direct {v2, v0}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/event/AttributedImageHelper;->onImageMetadataLoadComplete(Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;)V

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    const-string v1, "AttributedImageHelper"

    const-string v2, "Bad image metadata json: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 355
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_1
.end method
