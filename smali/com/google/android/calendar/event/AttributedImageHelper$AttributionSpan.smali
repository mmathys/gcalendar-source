.class public Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;
.super Ljava/lang/Object;
.source "AttributedImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/AttributedImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributionSpan"
.end annotation


# instance fields
.field private final mDisplayText:Ljava/lang/String;

.field private final mFullHtml:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->mFullHtml:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->mDisplayText:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->mUrl:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->mFullHtml:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->mDisplayText:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->mUrl:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->mDisplayText:Ljava/lang/String;

    return-object v0
.end method

.method public getFullHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->mFullHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isFullHtml()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->mFullHtml:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
