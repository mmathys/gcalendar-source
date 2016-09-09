.class Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;
.super Landroid/app/Dialog;
.source "LaunchScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/LaunchScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchScreenDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/LaunchScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/calendar/LaunchScreenManager;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;->this$0:Lcom/android/calendar/LaunchScreenManager;

    .line 176
    sget v0, Lcom/android/calendar/R$style;->CalendarTheme_AllInOneActivity_LaunchScreen:I

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 177
    sget v0, Lcom/android/calendar/R$layout;->launch_screen_dialog:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;->setContentView(I)V

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;->setCancelable(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 182
    sget v1, Lcom/android/calendar/R$style;->LaunchScreenAnimations:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 185
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$bool;->launchscreen_use_light_status_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 186
    invoke-static {v0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->createInstance(Landroid/view/Window;)Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v1}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->setLightStatusbar(Z)V

    .line 188
    return-void
.end method
