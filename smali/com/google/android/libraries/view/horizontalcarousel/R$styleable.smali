.class public final Lcom/google/android/libraries/view/horizontalcarousel/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/view/horizontalcarousel/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final HorizontalCarousel:[I

.field public static final HorizontalCarousel_layout_maxItemWidthHint:I = 0x3

.field public static final HorizontalCarousel_layout_spaceBetween:I = 0x2

.field public static final HorizontalCarousel_layout_spaceEnd:I = 0x1

.field public static final HorizontalCarousel_layout_spaceStart:I

.field public static final RecyclerView:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/libraries/view/horizontalcarousel/R$styleable;->HorizontalCarousel:[I

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/libraries/view/horizontalcarousel/R$styleable;->RecyclerView:[I

    return-void

    .line 31
    nop

    :array_0
    .array-data 4
        0x7f010100
        0x7f010101
        0x7f010102
        0x7f010103
    .end array-data

    .line 36
    :array_1
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f01013c
        0x7f01013d
        0x7f01013e
        0x7f01013f
    .end array-data
.end method
