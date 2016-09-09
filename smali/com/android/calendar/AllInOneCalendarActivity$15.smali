.class Lcom/android/calendar/AllInOneCalendarActivity$15;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;)V
    .locals 0

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$15;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1340
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$15;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1700(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$15;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1700(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 1345
    :goto_0
    return-void

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$15;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1700(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0
.end method
