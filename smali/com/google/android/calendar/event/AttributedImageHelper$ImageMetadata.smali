.class public Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;
.super Ljava/lang/Object;
.source "AttributedImageHelper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/AttributedImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageMetadata"
.end annotation


# instance fields
.field private final mAttributionSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;->mAttributionSpans:Ljava/util/List;

    .line 87
    return-void
.end method


# virtual methods
.method public getImageAttributionSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;->mAttributionSpans:Ljava/util/List;

    return-object v0
.end method
