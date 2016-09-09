.class public Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;
.super Ljava/lang/Object;
.source "SyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/SyncUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncStatsBackup"
.end annotation


# instance fields
.field public numDeletes:J

.field public numEntries:J

.field public numInserts:J

.field public numSkippedEntries:J

.field public numUpdates:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
