.class public Lcom/google/android/calendar/timely/settings/SyncFactoryImpl;
.super Ljava/lang/Object;
.source "SyncFactoryImpl.java"

# interfaces
.implements Lcom/android/calendar/timely/settings/SyncFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendSyncFlags(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 20
    const-string v0, "sync_extra_get_settings"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    const-string v0, "sync_extra_get_recent_notifications"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    const-string v0, "sync_extra_get_default_notifications"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    return v1
.end method

.method public getSyncableAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "com.google"

    return-object v0
.end method
