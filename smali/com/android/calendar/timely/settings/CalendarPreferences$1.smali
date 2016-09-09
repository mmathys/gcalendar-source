.class Lcom/android/calendar/timely/settings/CalendarPreferences$1;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/settings/CalendarPreferences;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/settings/CalendarPreferences;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$1;->this$0:Lcom/android/calendar/timely/settings/CalendarPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 261
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/settings/CalendarPreferences$1;->onChange(Ljava/lang/String;)V

    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$1;->this$0:Lcom/android/calendar/timely/settings/CalendarPreferences;

    invoke-virtual {v0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;

    .line 265
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$1;->this$0:Lcom/android/calendar/timely/settings/CalendarPreferences;

    # getter for: Lcom/android/calendar/timely/settings/CalendarPreferences;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/calendar/timely/settings/CalendarPreferences;->access$000(Lcom/android/calendar/timely/settings/CalendarPreferences;)Landroid/net/Uri;

    move-result-object v2

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$1;->this$0:Lcom/android/calendar/timely/settings/CalendarPreferences;

    # getter for: Lcom/android/calendar/timely/settings/CalendarPreferences;->mTitleAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v1}, Lcom/android/calendar/timely/settings/CalendarPreferences;->access$100(Lcom/android/calendar/timely/settings/CalendarPreferences;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;->onChangeTitle(Landroid/net/Uri;Ljava/lang/String;)V

    .line 266
    return-void
.end method
