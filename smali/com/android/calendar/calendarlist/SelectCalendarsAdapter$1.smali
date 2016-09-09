.class Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$1;
.super Ljava/lang/Object;
.source "SelectCalendarsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getAccountView(Landroid/view/View;Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$1;->this$0:Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;

    iput-object p2, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$1;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$1;->this$0:Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getDrawerSyncUIManager()Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$1;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->startSync(Landroid/accounts/Account;)V

    .line 383
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$1;->this$0:Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;

    # invokes: Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->logSyncEnabled()V
    invoke-static {v0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->access$100(Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;)V

    .line 384
    return-void
.end method
