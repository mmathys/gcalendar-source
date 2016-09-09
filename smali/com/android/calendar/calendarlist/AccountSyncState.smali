.class public Lcom/android/calendar/calendarlist/AccountSyncState;
.super Ljava/lang/Object;
.source "AccountSyncState.java"


# static fields
.field public static final COMPLETE:Lcom/android/calendar/calendarlist/AccountSyncState;

.field public static final DISABLED:Lcom/android/calendar/calendarlist/AccountSyncState;

.field public static final ENABLED:Lcom/android/calendar/calendarlist/AccountSyncState;

.field public static final ERROR:Lcom/android/calendar/calendarlist/AccountSyncState;

.field public static final SYNCING:Lcom/android/calendar/calendarlist/AccountSyncState;


# instance fields
.field public final iconId:I

.field public final textId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/android/calendar/calendarlist/AccountSyncState;

    invoke-direct {v0, v3, v3}, Lcom/android/calendar/calendarlist/AccountSyncState;-><init>(II)V

    sput-object v0, Lcom/android/calendar/calendarlist/AccountSyncState;->ENABLED:Lcom/android/calendar/calendarlist/AccountSyncState;

    .line 13
    new-instance v0, Lcom/android/calendar/calendarlist/AccountSyncState;

    sget v1, Lcom/android/calendar/R$drawable;->quantum_ic_sync_disabled_grey600_24:I

    sget v2, Lcom/android/calendar/R$string;->drawer_account_sync_disabled:I

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/calendarlist/AccountSyncState;-><init>(II)V

    sput-object v0, Lcom/android/calendar/calendarlist/AccountSyncState;->DISABLED:Lcom/android/calendar/calendarlist/AccountSyncState;

    .line 18
    new-instance v0, Lcom/android/calendar/calendarlist/AccountSyncState;

    sget v1, Lcom/android/calendar/R$drawable;->quantum_ic_sync_grey600_24:I

    sget v2, Lcom/android/calendar/R$string;->drawer_account_sync_syncing:I

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/calendarlist/AccountSyncState;-><init>(II)V

    sput-object v0, Lcom/android/calendar/calendarlist/AccountSyncState;->SYNCING:Lcom/android/calendar/calendarlist/AccountSyncState;

    .line 23
    new-instance v0, Lcom/android/calendar/calendarlist/AccountSyncState;

    sget v1, Lcom/android/calendar/R$string;->drawer_account_sync_compete:I

    invoke-direct {v0, v3, v1}, Lcom/android/calendar/calendarlist/AccountSyncState;-><init>(II)V

    sput-object v0, Lcom/android/calendar/calendarlist/AccountSyncState;->COMPLETE:Lcom/android/calendar/calendarlist/AccountSyncState;

    .line 27
    new-instance v0, Lcom/android/calendar/calendarlist/AccountSyncState;

    sget v1, Lcom/android/calendar/R$string;->drawer_account_sync_error:I

    invoke-direct {v0, v3, v1}, Lcom/android/calendar/calendarlist/AccountSyncState;-><init>(II)V

    sput-object v0, Lcom/android/calendar/calendarlist/AccountSyncState;->ERROR:Lcom/android/calendar/calendarlist/AccountSyncState;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/android/calendar/calendarlist/AccountSyncState;->iconId:I

    .line 35
    iput p2, p0, Lcom/android/calendar/calendarlist/AccountSyncState;->textId:I

    .line 36
    return-void
.end method
