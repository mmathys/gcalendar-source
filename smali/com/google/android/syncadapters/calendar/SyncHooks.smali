.class public interface abstract Lcom/google/android/syncadapters/calendar/SyncHooks;
.super Ljava/lang/Object;
.source "SyncHooks.java"


# virtual methods
.method public abstract extractCalendarIdFromSubscriptionUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract generateSubscriptionUrl(Landroid/content/ContentValues;)Ljava/lang/String;
.end method

.method public abstract getHookSyncTypePrefix()Ljava/lang/String;
.end method

.method public abstract initialize(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;)V
.end method

.method public abstract isHookSpecificSync(Landroid/accounts/Account;Landroid/os/Bundle;)Z
.end method

.method public abstract onAfterConvertEntityToEvent(Landroid/content/Entity;Lcom/google/api/services/calendar/model/Event;Z)V
.end method

.method public abstract onAfterDownSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V
.end method

.method public abstract onAfterUpSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V
.end method

.method public abstract onBeforeApplyEventToEntity(Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;Landroid/content/ContentValues;)V
.end method

.method public abstract onBeforeDownSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V
.end method

.method public abstract onBeforeUpSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V
.end method

.method public abstract onInitializeSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V
.end method

.method public abstract onSyncInitiated(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V
.end method

.method public abstract performHookSpecificSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V
.end method
