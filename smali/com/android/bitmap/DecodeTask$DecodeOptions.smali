.class public Lcom/android/bitmap/DecodeTask$DecodeOptions;
.super Ljava/lang/Object;
.source "DecodeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bitmap/DecodeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeOptions"
.end annotation


# instance fields
.field public destH:I

.field public destW:I

.field public horizontalCenter:F

.field public sampleSizeStrategy:I

.field public verticalCenter:F


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0

    .prologue
    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput p1, p0, Lcom/android/bitmap/DecodeTask$DecodeOptions;->destW:I

    .line 633
    iput p2, p0, Lcom/android/bitmap/DecodeTask$DecodeOptions;->destH:I

    .line 634
    iput p3, p0, Lcom/android/bitmap/DecodeTask$DecodeOptions;->horizontalCenter:F

    .line 635
    iput p4, p0, Lcom/android/bitmap/DecodeTask$DecodeOptions;->verticalCenter:F

    .line 636
    iput p5, p0, Lcom/android/bitmap/DecodeTask$DecodeOptions;->sampleSizeStrategy:I

    .line 637
    return-void
.end method
