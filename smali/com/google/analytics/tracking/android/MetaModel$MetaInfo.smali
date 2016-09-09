.class public Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;
.super Ljava/lang/Object;
.source "MetaModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/MetaModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaInfo"
.end annotation


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private final mFormatter:Lcom/google/analytics/tracking/android/MetaModel$Formatter;

.field private final mUrlParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/MetaModel$Formatter;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->mUrlParam:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->mDefaultValue:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->mFormatter:Lcom/google/analytics/tracking/android/MetaModel$Formatter;

    .line 58
    return-void
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatter()Lcom/google/analytics/tracking/android/MetaModel$Formatter;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->mFormatter:Lcom/google/analytics/tracking/android/MetaModel$Formatter;

    return-object v0
.end method

.method public getUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 71
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->mUrlParam:Ljava/lang/String;

    .line 74
    const-string v2, "\\*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    array-length v3, v2

    if-le v3, v4, :cond_0

    .line 77
    const/4 v3, 0x1

    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v2

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse slot for url parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->mUrlParam:Ljava/lang/String;

    goto :goto_0
.end method
