.class Landroid/support/v4/app/NotificationCompatKitKat;
.super Ljava/lang/Object;
.source "NotificationCompatKitKat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatKitKat$Builder;
    }
.end annotation


# direct methods
.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object v0
.end method
