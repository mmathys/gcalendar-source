.class public Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension;
.super Lcom/android/calendar/timely/data/AccountsSettingsProviderHelper;
.source "AccountsSettingsProviderHelperExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "accountName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "defaultEventLength"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "defaultNoEndTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/calendar/timely/data/AccountsSettingsProviderHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getCursorCreator()Lcom/android/calendar/content/CursorCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/calendar/content/CursorCreator",
            "<",
            "Lcom/android/calendar/timely/data/AccountItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;->FACTORY:Lcom/android/calendar/content/CursorCreator;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->ACCOUNT_SETTINGS_URI:Landroid/net/Uri;

    return-object v0
.end method
