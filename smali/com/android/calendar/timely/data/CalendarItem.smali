.class public Lcom/android/calendar/timely/data/CalendarItem;
.super Ljava/lang/Object;
.source "CalendarItem.java"

# interfaces
.implements Lcom/android/calendar/timely/data/DataCache$ProviderItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/data/CalendarItem$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/calendar/timely/data/DataCache$ProviderItem",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/android/calendar/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/content/CursorCreator",
            "<",
            "Lcom/android/calendar/timely/data/CalendarItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

.field private mAccount:Landroid/accounts/Account;

.field private mColor:I

.field private mDisplayName:Ljava/lang/String;

.field private mId:J

.field private mIsPrimary:Z

.field private mIsSelected:Z

.field private mIsSynced:Z

.field private mOwnerAccount:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/android/calendar/timely/data/CalendarItem$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/data/CalendarItem$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/data/CalendarItem;->FACTORY:Lcom/android/calendar/content/CursorCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/data/CalendarItem$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/calendar/timely/data/CalendarItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/android/calendar/timely/data/CalendarItem$Builder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    # getter for: Lcom/android/calendar/timely/data/CalendarItem$Builder;->mId:J
    invoke-static {p1}, Lcom/android/calendar/timely/data/CalendarItem$Builder;->access$100(Lcom/android/calendar/timely/data/CalendarItem$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mId:J

    .line 87
    iput-object v3, p0, Lcom/android/calendar/timely/data/CalendarItem;->mUri:Landroid/net/Uri;

    .line 88
    iput-boolean v2, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsPrimary:Z

    .line 89
    # getter for: Lcom/android/calendar/timely/data/CalendarItem$Builder;->mDisplayName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/calendar/timely/data/CalendarItem$Builder;->access$200(Lcom/android/calendar/timely/data/CalendarItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mDisplayName:Ljava/lang/String;

    .line 90
    # getter for: Lcom/android/calendar/timely/data/CalendarItem$Builder;->mColor:I
    invoke-static {p1}, Lcom/android/calendar/timely/data/CalendarItem$Builder;->access$300(Lcom/android/calendar/timely/data/CalendarItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mColor:I

    .line 91
    iput-boolean v2, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsSelected:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsSynced:Z

    .line 93
    # getter for: Lcom/android/calendar/timely/data/CalendarItem$Builder;->mOwnerAccount:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/calendar/timely/data/CalendarItem$Builder;->access$400(Lcom/android/calendar/timely/data/CalendarItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mOwnerAccount:Ljava/lang/String;

    .line 94
    iput-object v3, p0, Lcom/android/calendar/timely/data/CalendarItem;->mAccount:Landroid/accounts/Account;

    .line 95
    iput-object v3, p0, Lcom/android/calendar/timely/data/CalendarItem;->mAccessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/data/CalendarItem$Builder;Lcom/android/calendar/timely/data/CalendarItem$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/data/CalendarItem;-><init>(Lcom/android/calendar/timely/data/CalendarItem$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/calendar/timely/data/CalendarItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/calendar/timely/data/CalendarItem;->mDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/calendar/timely/data/CalendarItem;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/android/calendar/timely/data/CalendarItem;->mColor:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/calendar/timely/data/CalendarItem;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/calendar/timely/data/CalendarItem;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsSynced:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/calendar/timely/data/CalendarItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/calendar/timely/data/CalendarItem;->mOwnerAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/calendar/timely/data/CalendarItem;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/calendar/timely/data/CalendarItem;->mAccount:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/calendar/timely/data/CalendarItem;Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;)Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/calendar/timely/data/CalendarItem;->mAccessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/calendar/timely/data/CalendarItem;J)J
    .locals 1

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/android/calendar/timely/data/CalendarItem;->mId:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/android/calendar/timely/data/CalendarItem;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/calendar/timely/data/CalendarItem;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/calendar/timely/data/CalendarItem;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsPrimary:Z

    return p1
.end method

.method public static newBuilder()Lcom/android/calendar/timely/data/CalendarItem$Builder;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/android/calendar/timely/data/CalendarItem$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/data/CalendarItem$Builder;-><init>(Lcom/android/calendar/timely/data/CalendarItem$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    if-ne p1, p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    instance-of v2, p1, Lcom/android/calendar/timely/data/CalendarItem;

    if-eqz v2, :cond_3

    .line 146
    check-cast p1, Lcom/android/calendar/timely/data/CalendarItem;

    .line 147
    iget v2, p0, Lcom/android/calendar/timely/data/CalendarItem;->mColor:I

    iget v3, p1, Lcom/android/calendar/timely/data/CalendarItem;->mColor:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsPrimary:Z

    iget-boolean v3, p1, Lcom/android/calendar/timely/data/CalendarItem;->mIsPrimary:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsSelected:Z

    iget-boolean v3, p1, Lcom/android/calendar/timely/data/CalendarItem;->mIsSelected:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/calendar/timely/data/CalendarItem;->mDisplayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/timely/data/CalendarItem;->mDisplayName:Ljava/lang/String;

    .line 150
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/calendar/timely/data/CalendarItem;->mId:J

    iget-wide v4, p1, Lcom/android/calendar/timely/data/CalendarItem;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/timely/data/CalendarItem;->mUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/calendar/timely/data/CalendarItem;->mUri:Landroid/net/Uri;

    .line 151
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsSynced:Z

    iget-boolean v3, p1, Lcom/android/calendar/timely/data/CalendarItem;->mIsSynced:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/calendar/timely/data/CalendarItem;->mOwnerAccount:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/timely/data/CalendarItem;->mOwnerAccount:Ljava/lang/String;

    .line 153
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/timely/data/CalendarItem;->mAccount:Landroid/accounts/Account;

    iget-object v3, p1, Lcom/android/calendar/timely/data/CalendarItem;->mAccount:Landroid/accounts/Account;

    .line 154
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/timely/data/CalendarItem;->mAccessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    iget-object v3, p1, Lcom/android/calendar/timely/data/CalendarItem;->mAccessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 158
    goto :goto_0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mColor:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/calendar/timely/data/CalendarItem;->getId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mOwnerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    iget v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mColor:I

    .line 164
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsPrimary:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 165
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsSelected:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 166
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    .line 167
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/android/calendar/timely/data/CalendarItem;->mId:J

    iget-wide v6, p0, Lcom/android/calendar/timely/data/CalendarItem;->mId:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    .line 168
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    .line 169
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsSynced:Z

    if-eqz v3, :cond_5

    :goto_4
    add-int/2addr v0, v1

    .line 170
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mOwnerAccount:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v1

    .line 171
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v1

    .line 172
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/calendar/timely/data/CalendarItem;->mAccessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/data/CalendarItem;->mAccessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    .line 173
    return v0

    :cond_1
    move v0, v2

    .line 164
    goto :goto_0

    :cond_2
    move v0, v2

    .line 165
    goto :goto_1

    :cond_3
    move v0, v2

    .line 166
    goto :goto_2

    :cond_4
    move v0, v2

    .line 168
    goto :goto_3

    :cond_5
    move v1, v2

    .line 169
    goto :goto_4

    :cond_6
    move v0, v2

    .line 170
    goto :goto_5

    :cond_7
    move v0, v2

    .line 171
    goto :goto_6
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsPrimary:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsSelected:Z

    return v0
.end method

.method public isSynced()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mIsSynced:Z

    return v0
.end method

.method public isWritable()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarItem;->mAccessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->WRITER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
