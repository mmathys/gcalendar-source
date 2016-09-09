.class Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;
.super Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;
.source "AccountEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 219
    invoke-direct {p0, p2, v1, v1, v0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;-><init>(Landroid/content/Context;ZILjava/util/Set;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;->setData()V

    .line 222
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;

    .line 245
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    # getter for: Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->mListener:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->access$300(Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;)Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    # getter for: Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->mListener:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->access$300(Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;)Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;->onAccountSelected(Ljava/lang/String;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->dismiss()V

    .line 249
    return-void
.end method

.method public setData()V
    .locals 5

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    # getter for: Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->mAccountsList:Ljava/util/Collection;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->access$200(Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 229
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 232
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;->mLastItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    # getter for: Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->mAccountsList:Ljava/util/Collection;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->access$200(Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 234
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 235
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;->mLastItems:Ljava/util/List;

    new-instance v4, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;

    invoke-direct {v4, v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;-><init>(Landroid/accounts/Account;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;->updateItemList()V

    goto :goto_0
.end method
