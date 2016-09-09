.class public Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;
.super Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;
.source "LargeThreadpoolBitmapDrawable.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/calendar/AllInOneCalendarActivity;->SMALL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method
