.class public Lcom/google/android/apiary/GoogleRequestInitializer$BlockedRequestException;
.super Ljava/io/IOException;
.source "GoogleRequestInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apiary/GoogleRequestInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockedRequestException"
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/common/http/Rule;)V
    .locals 3

    .prologue
    .line 179
    const-string v1, "Blocked by rule: "

    iget-object v0, p1, Lcom/google/android/common/http/Rule;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 180
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/common/http/Rule;Lcom/google/android/apiary/GoogleRequestInitializer$1;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/apiary/GoogleRequestInitializer$BlockedRequestException;-><init>(Lcom/google/android/common/http/Rule;)V

    return-void
.end method
