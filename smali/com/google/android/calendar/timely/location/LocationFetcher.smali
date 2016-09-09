.class public Lcom/google/android/calendar/timely/location/LocationFetcher;
.super Lcom/android/calendar/timely/SuggestionFetcher;
.source "LocationFetcher.java"

# interfaces
.implements Lcom/google/android/calendar/timely/location/Dampener$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/timely/SuggestionFetcher",
        "<",
        "Lcom/android/calendar/event/EventLocationAdapter$Result;",
        ">;",
        "Lcom/google/android/calendar/timely/location/Dampener$Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDampener:Lcom/google/android/calendar/timely/location/Dampener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/timely/location/Dampener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchSuggestionsTask:Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;

.field private final mHandler:Landroid/os/Handler;

.field private mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/calendar/timely/location/LocationFetcher;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/location/LocationFetcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/calendar/timely/SuggestionFetcher;-><init>()V

    .line 41
    new-instance v0, Lcom/google/android/calendar/timely/location/Dampener;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p0}, Lcom/google/android/calendar/timely/location/Dampener;-><init>(ILcom/google/android/calendar/timely/location/Dampener$Callback;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher;->mDampener:Lcom/google/android/calendar/timely/location/Dampener;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/calendar/timely/location/LocationFetcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/timely/location/LocationFetcher;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/timely/location/LocationFetcher;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/calendar/timely/location/LocationFetcher;Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;)Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/calendar/timely/location/LocationFetcher;->mFetchSuggestionsTask:Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic handleDampened(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/location/LocationFetcher;->handleDampened(Ljava/lang/String;)V

    return-void
.end method

.method public handleDampened(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 73
    iget-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher;->mFetchSuggestionsTask:Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher;->mFetchSuggestionsTask:Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;

    invoke-virtual {v0, v2}, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->cancel(Z)Z

    .line 76
    :cond_0
    new-instance v0, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;-><init>(Lcom/google/android/calendar/timely/location/LocationFetcher;Lcom/google/android/calendar/timely/location/LocationFetcher$1;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher;->mFetchSuggestionsTask:Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;

    .line 77
    iget-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher;->mFetchSuggestionsTask:Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;

    sget-object v1, Lcom/google/android/calendar/net/AsyncRequestLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/SuggestionFetcher;->initialize(Landroid/content/Context;Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener;)V

    .line 51
    iput-object p1, p0, Lcom/google/android/calendar/timely/location/LocationFetcher;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/google/android/calendar/timely/location/LocationClientListener;

    invoke-direct {v0}, Lcom/google/android/calendar/timely/location/LocationClientListener;-><init>()V

    .line 53
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 54
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 58
    iget-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 59
    return-void
.end method

.method public startFetchingSuggestions(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher;->mDampener:Lcom/google/android/calendar/timely/location/Dampener;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/timely/location/Dampener;->execute(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
