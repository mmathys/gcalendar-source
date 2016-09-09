.class Lcom/android/calendar/AllInOneCalendarActivity$9$3;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity$9;->onDrawerOpened(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/AllInOneCalendarActivity$9;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity$9;)V
    .locals 0

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$9$3;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9$3;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$9;

    iget-object v0, v0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1700(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$9$3;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$9;

    iget-object v1, v1, Lcom/android/calendar/AllInOneCalendarActivity$9;->val$drawerOpenedAnnouncement:Ljava/lang/String;

    .line 889
    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 890
    return-void
.end method
