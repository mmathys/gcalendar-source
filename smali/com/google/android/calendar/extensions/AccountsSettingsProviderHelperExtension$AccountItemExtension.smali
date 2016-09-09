.class Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;
.super Lcom/android/calendar/timely/data/AccountItem;
.source "AccountsSettingsProviderHelperExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountItemExtension"
.end annotation


# static fields
.field public static FACTORY:Lcom/android/calendar/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/content/CursorCreator",
            "<",
            "Lcom/android/calendar/timely/data/AccountItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension$1;

    invoke-direct {v0}, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;->FACTORY:Lcom/android/calendar/content/CursorCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/calendar/timely/data/AccountItem;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$1;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;->mAccount:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;->mEventDuration:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension$AccountItemExtension;->mNoEndTime:Z

    return p1
.end method
