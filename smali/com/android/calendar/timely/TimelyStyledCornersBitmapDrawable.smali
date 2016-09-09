.class public Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;
.super Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;
.source "TimelyStyledCornersBitmapDrawable.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;FF)V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p6}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;FF)V

    .line 46
    return-void
.end method


# virtual methods
.method protected getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/calendar/AllInOneCalendarActivity;->SMALL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method
