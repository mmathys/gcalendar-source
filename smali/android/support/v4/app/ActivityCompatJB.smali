.class Landroid/support/v4/app/ActivityCompatJB;
.super Ljava/lang/Object;
.source "ActivityCompatJB.java"


# direct methods
.method public static finishAffinity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 43
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 32
    return-void
.end method
