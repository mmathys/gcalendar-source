.class Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;
.super Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowInsetsCompatApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;-><init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public isConsumed(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 232
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->isConsumed(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
