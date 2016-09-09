.class Lcom/android/calendar/ColorCache$AccountWithColor;
.super Ljava/lang/Object;
.source "ColorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ColorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountWithColor"
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mColor:Lcom/google/calendar/v2/client/service/api/common/Color;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iput-object p1, p0, Lcom/android/calendar/ColorCache$AccountWithColor;->mAccount:Landroid/accounts/Account;

    .line 139
    iput-object p2, p0, Lcom/android/calendar/ColorCache$AccountWithColor;->mColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/ColorCache$AccountWithColor;)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/calendar/ColorCache$AccountWithColor;->mColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 144
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/calendar/ColorCache$AccountWithColor;

    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    check-cast p1, Lcom/android/calendar/ColorCache$AccountWithColor;

    .line 148
    iget-object v1, p0, Lcom/android/calendar/ColorCache$AccountWithColor;->mAccount:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/calendar/ColorCache$AccountWithColor;->mAccount:Landroid/accounts/Account;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/ColorCache$AccountWithColor;->mColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    iget-object v2, p1, Lcom/android/calendar/ColorCache$AccountWithColor;->mColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/calendar/ColorCache$AccountWithColor;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/android/calendar/ColorCache$AccountWithColor;->mColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/common/Color;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 155
    return v0
.end method
