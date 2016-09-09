.class final enum Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;
.super Ljava/lang/Enum;
.source "HprofParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/hprof/HprofParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ParseAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

.field public static final enum CLASSIFY_REF:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

.field public static final enum EXCLUDE_INSTANCE:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

.field public static final enum FIND_INSTANCE:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    const-string v1, "EXCLUDE_INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->EXCLUDE_INSTANCE:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    .line 52
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    const-string v1, "FIND_INSTANCE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->FIND_INSTANCE:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    .line 53
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    const-string v1, "CLASSIFY_REF"

    invoke-direct {v0, v1, v4}, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->CLASSIFY_REF:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    sget-object v1, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->EXCLUDE_INSTANCE:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->FIND_INSTANCE:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->CLASSIFY_REF:Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->$VALUES:[Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->$VALUES:[Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    invoke-virtual {v0}, [Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/performance/primes/hprof/HprofParser$ParseAction;

    return-object v0
.end method
