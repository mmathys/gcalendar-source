.class public abstract Lcom/android/emailcommon/service/EmailServiceStatus;
.super Ljava/lang/Object;
.source "EmailServiceStatus.java"


# direct methods
.method public static buildSearchStatus(II)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 131
    const-string v1, "search_status"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    const-string v1, "search_total_results"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    return-object v0
.end method
