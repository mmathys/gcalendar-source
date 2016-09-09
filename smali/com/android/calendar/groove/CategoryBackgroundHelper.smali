.class public Lcom/android/calendar/groove/CategoryBackgroundHelper;
.super Ljava/lang/Object;
.source "CategoryBackgroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/CategoryBackgroundHelper$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mCache:Lcom/android/bitmap/BitmapCache;

.field private static sInstance:Lcom/android/calendar/groove/CategoryBackgroundHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/calendar/groove/CategoryBackgroundHelper;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/CategoryBackgroundHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getBackgroundImageCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/CategoryBackgroundHelper;->mCache:Lcom/android/bitmap/BitmapCache;

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/android/calendar/groove/CategoryBackgroundHelper;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/calendar/groove/CategoryBackgroundHelper;->sInstance:Lcom/android/calendar/groove/CategoryBackgroundHelper;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/calendar/groove/CategoryBackgroundHelper;

    invoke-direct {v0}, Lcom/android/calendar/groove/CategoryBackgroundHelper;-><init>()V

    sput-object v0, Lcom/android/calendar/groove/CategoryBackgroundHelper;->sInstance:Lcom/android/calendar/groove/CategoryBackgroundHelper;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/calendar/groove/CategoryBackgroundHelper;->sInstance:Lcom/android/calendar/groove/CategoryBackgroundHelper;

    return-object v0
.end method


# virtual methods
.method public cancelAll()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/android/calendar/cache/VolleyQueueHolder;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-string v1, "category_background_target_request"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public requestBackgroundImage(Landroid/app/Activity;ILandroid/view/View;Lcom/android/calendar/groove/CategoryBackgroundHelper$Listener;)V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 56
    new-instance v3, Lcom/android/calendar/timely/ListenableBitmapDrawable;

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/groove/CategoryBackgroundHelper;->mCache:Lcom/android/bitmap/BitmapCache;

    const/4 v2, 0x1

    invoke-direct {v3, v0, v1, v2, v6}, Lcom/android/calendar/timely/ListenableBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 58
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 59
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/android/calendar/Utils;->getMaximumDisplayDimension(Landroid/view/Display;)I

    move-result v7

    .line 62
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getGrooveTabletCategoryIllustrationUrlString(I)Ljava/lang/String;

    move-result-object v9

    .line 64
    new-instance v10, Lcom/android/volley/toolbox/ImageRequest;

    new-instance v0, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;-><init>(Lcom/android/calendar/groove/CategoryBackgroundHelper;Landroid/app/Activity;Lcom/android/calendar/timely/ListenableBitmapDrawable;Lcom/android/calendar/groove/CategoryBackgroundHelper$Listener;Landroid/view/View;)V

    new-instance v8, Lcom/android/calendar/groove/CategoryBackgroundHelper$2;

    invoke-direct {v8, p0}, Lcom/android/calendar/groove/CategoryBackgroundHelper$2;-><init>(Lcom/android/calendar/groove/CategoryBackgroundHelper;)V

    move-object v1, v10

    move-object v2, v9

    move-object v3, v0

    move v4, v7

    move v5, v7

    move-object v7, v6

    invoke-direct/range {v1 .. v8}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    .line 87
    const-string v0, "category_background_target_request"

    invoke-virtual {v10, v0}, Lcom/android/volley/toolbox/ImageRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 88
    invoke-static {}, Lcom/android/calendar/cache/VolleyQueueHolder;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 89
    return-void
.end method
