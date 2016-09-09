.class Lcom/google/android/calendar/timely/ApiClientAsyncTask$2;
.super Ljava/lang/Object;
.source "ApiClientAsyncTask.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/ApiClientAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/ApiClientAsyncTask;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/ApiClientAsyncTask;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/calendar/timely/ApiClientAsyncTask$2;->this$0:Lcom/google/android/calendar/timely/ApiClientAsyncTask;

    iput-object p2, p0, Lcom/google/android/calendar/timely/ApiClientAsyncTask$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/calendar/timely/ApiClientAsyncTask$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 56
    return-void
.end method
