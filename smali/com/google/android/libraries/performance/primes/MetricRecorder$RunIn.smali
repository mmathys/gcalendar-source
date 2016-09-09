.class public final enum Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;
.super Ljava/lang/Enum;
.source "MetricRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/MetricRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RunIn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

.field public static final enum BACKGROUND_THREAD:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

.field public static final enum SAME_THREAD:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    const-string v1, "SAME_THREAD"

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;->SAME_THREAD:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    new-instance v0, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    const-string v1, "BACKGROUND_THREAD"

    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;->BACKGROUND_THREAD:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    sget-object v1, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;->SAME_THREAD:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;->BACKGROUND_THREAD:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;->$VALUES:[Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;->$VALUES:[Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    invoke-virtual {v0}, [Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    return-object v0
.end method
