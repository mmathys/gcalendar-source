.class Lcom/android/calendar/timely/settings/CalendarPreferences$2;
.super Ljava/lang/Object;
.source "CalendarPreferences.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/settings/CalendarPreferences;->restoreModelState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/settings/CalendarPreferences;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/settings/CalendarPreferences;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$2;->this$0:Lcom/android/calendar/timely/settings/CalendarPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$2;->this$0:Lcom/android/calendar/timely/settings/CalendarPreferences;

    invoke-virtual {v0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;

    .line 276
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$2;->this$0:Lcom/android/calendar/timely/settings/CalendarPreferences;

    # getter for: Lcom/android/calendar/timely/settings/CalendarPreferences;->mSyncAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    invoke-static {v1}, Lcom/android/calendar/timely/settings/CalendarPreferences;->access$200(Lcom/android/calendar/timely/settings/CalendarPreferences;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$2;->this$0:Lcom/android/calendar/timely/settings/CalendarPreferences;

    # getter for: Lcom/android/calendar/timely/settings/CalendarPreferences;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/calendar/timely/settings/CalendarPreferences;->access$000(Lcom/android/calendar/timely/settings/CalendarPreferences;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$2;->this$0:Lcom/android/calendar/timely/settings/CalendarPreferences;

    # getter for: Lcom/android/calendar/timely/settings/CalendarPreferences;->mSyncAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    invoke-static {v2}, Lcom/android/calendar/timely/settings/CalendarPreferences;->access$200(Lcom/android/calendar/timely/settings/CalendarPreferences;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;->onChangeSync(Landroid/net/Uri;Z)V

    .line 281
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 272
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/settings/CalendarPreferences$2;->onChange(Ljava/lang/Boolean;)V

    return-void
.end method
