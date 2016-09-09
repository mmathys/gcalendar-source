.class public Lcom/google/android/calendar/experiments/Experiment;
.super Ljava/lang/Object;
.source "Experiment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/experiments/Experiment$Builder;
    }
.end annotation


# static fields
.field protected static final EXPERIMENT_PREFIX:Ljava/lang/String; = "EXP_"

.field protected static final EXPERIMENT_SCALE:I = 0x64


# instance fields
.field public final lowerBoundary:I

.field private mActive:Ljava/lang/Boolean;

.field public final name:Ljava/lang/String;

.field public final salt:I

.field public final upperBoundary:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIILjava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p2, p0, Lcom/google/android/calendar/experiments/Experiment;->salt:I

    .line 141
    iput-object p1, p0, Lcom/google/android/calendar/experiments/Experiment;->name:Ljava/lang/String;

    .line 142
    iput p3, p0, Lcom/google/android/calendar/experiments/Experiment;->lowerBoundary:I

    .line 143
    iput p4, p0, Lcom/google/android/calendar/experiments/Experiment;->upperBoundary:I

    .line 144
    iput-object p5, p0, Lcom/google/android/calendar/experiments/Experiment;->mActive:Ljava/lang/Boolean;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILjava/lang/Boolean;Lcom/google/android/calendar/experiments/Experiment$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/google/android/calendar/experiments/Experiment;-><init>(Ljava/lang/String;IIILjava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method checkForcedSwitching()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 175
    const-string v0, "EXP_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/calendar/experiments/Experiment;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/experiments/Experiment;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 181
    :goto_1
    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/experiments/Experiment;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 181
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getBucket(Landroid/content/Context;II)I
    .locals 1

    .prologue
    .line 170
    invoke-static {p1, p2, p3}, Lcom/google/android/calendar/DeviceUtils;->getDeviceBucket(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public isActive(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/calendar/experiments/Experiment;->mActive:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/google/android/calendar/experiments/Experiment;->checkForcedSwitching()Ljava/lang/Boolean;

    move-result-object v0

    .line 158
    if-nez v0, :cond_0

    .line 159
    iget v0, p0, Lcom/google/android/calendar/experiments/Experiment;->salt:I

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/calendar/experiments/Experiment;->getBucket(Landroid/content/Context;II)I

    move-result v0

    .line 160
    iget v1, p0, Lcom/google/android/calendar/experiments/Experiment;->lowerBoundary:I

    if-lt v0, v1, :cond_2

    iget v1, p0, Lcom/google/android/calendar/experiments/Experiment;->upperBoundary:I

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 162
    :cond_0
    iput-object v0, p0, Lcom/google/android/calendar/experiments/Experiment;->mActive:Ljava/lang/Boolean;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/experiments/Experiment;->mActive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 160
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLoggable(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 189
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/calendar/experiments/Experiment;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Experiment{name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
