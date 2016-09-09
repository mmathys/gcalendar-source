.class Lcom/google/android/libraries/performance/primes/CrashMetricService$1;
.super Ljava/lang/Object;
.source "CrashMetricService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/CrashMetricService;->handleEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/CrashMetricService;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/CrashMetricService;I)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$1;->this$0:Lcom/google/android/libraries/performance/primes/CrashMetricService;

    iput p2, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$1;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$1;->this$0:Lcom/google/android/libraries/performance/primes/CrashMetricService;

    iget v1, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$1;->val$event:I

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/CrashMetricService;->recordStartupEvent(I)V

    .line 147
    return-void
.end method
