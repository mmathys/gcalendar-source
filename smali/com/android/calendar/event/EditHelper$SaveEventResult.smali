.class public Lcom/android/calendar/event/EditHelper$SaveEventResult;
.super Ljava/lang/Object;
.source "EditHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveEventResult"
.end annotation


# instance fields
.field public final eventInferredSyncId:Ljava/lang/String;

.field public final newEvent:Z

.field public final queuedForSaving:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-boolean p1, p0, Lcom/android/calendar/event/EditHelper$SaveEventResult;->queuedForSaving:Z

    .line 228
    iput-object p2, p0, Lcom/android/calendar/event/EditHelper$SaveEventResult;->eventInferredSyncId:Ljava/lang/String;

    .line 229
    iput-boolean p3, p0, Lcom/android/calendar/event/EditHelper$SaveEventResult;->newEvent:Z

    .line 230
    return-void
.end method
