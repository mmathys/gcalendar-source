.class public Lcom/android/calendar/timely/TimelyCircularBitmapDrawable;
.super Lcom/android/bitmap/drawable/CircularBitmapDrawable;
.source "TimelyCircularBitmapDrawable.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bitmap/drawable/CircularBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Z)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/calendar/AllInOneCalendarActivity;->SMALL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method
