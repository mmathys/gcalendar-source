.class final Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension$1;
.super Ljava/lang/Object;
.source "AccountsSettingsProviderHelperExtension.java"

# interfaces
.implements Lcom/android/calendar/content/CursorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/calendar/content/CursorCreator",
        "<",
        "Lcom/android/calendar/timely/data/AccountItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromCursor(Landroid/database/Cursor;)Lcom/android/calendar/timely/data/AccountItem;
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 50
    new-instance v1, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;-><init>(Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$1;)V

    .line 51
    const-string v2, "accountName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 53
    const-string v3, "defaultEventLength"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 55
    const-string v4, "defaultNoEndTime"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 58
    new-instance v5, Landroid/accounts/Account;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.google"

    invoke-direct {v5, v2, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;->mAccount:Landroid/accounts/Account;
    invoke-static {v1, v5}, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;->access$102(Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 60
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    # setter for: Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;->mEventDuration:I
    invoke-static {v1, v2}, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;->access$202(Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;I)I

    .line 61
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    # setter for: Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;->mNoEndTime:Z
    invoke-static {v1, v0}, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;->access$302(Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;Z)Z

    .line 62
    return-object v1

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension$1;->createFromCursor(Landroid/database/Cursor;)Lcom/android/calendar/timely/data/AccountItem;

    move-result-object v0

    return-object v0
.end method
