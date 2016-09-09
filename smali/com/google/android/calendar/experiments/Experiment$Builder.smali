.class public Lcom/google/android/calendar/experiments/Experiment$Builder;
.super Ljava/lang/Object;
.source "Experiment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/experiments/Experiment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mForceActive:Ljava/lang/Boolean;

.field private final mLowerBoundary:I

.field private final mName:Ljava/lang/String;

.field private final mSalt:I

.field private final mUpperBoundary:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mName:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mSalt:I

    .line 67
    iput p3, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mLowerBoundary:I

    .line 68
    iput p4, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mUpperBoundary:I

    .line 69
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/calendar/experiments/Experiment;
    .locals 7

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Experiment name can not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget v0, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mLowerBoundary:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mUpperBoundary:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Experiment interval must be in [0, 100)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    iget v0, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mUpperBoundary:I

    iget v1, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mLowerBoundary:I

    if-gt v0, v1, :cond_3

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The upperBoundary must be strictly biggerthan the lowerBoundary."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_3
    new-instance v0, Lcom/google/android/calendar/experiments/Experiment;

    iget-object v1, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mSalt:I

    iget v3, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mLowerBoundary:I

    iget v4, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mUpperBoundary:I

    iget-object v5, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mForceActive:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/experiments/Experiment;-><init>(Ljava/lang/String;IIILjava/lang/Boolean;Lcom/google/android/calendar/experiments/Experiment$1;)V

    return-object v0
.end method

.method public forceActiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;
    .locals 1

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mForceActive:Ljava/lang/Boolean;

    .line 75
    :cond_0
    return-object p0
.end method

.method public forceInactiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;
    .locals 1

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/experiments/Experiment$Builder;->mForceActive:Ljava/lang/Boolean;

    .line 82
    :cond_0
    return-object p0
.end method
