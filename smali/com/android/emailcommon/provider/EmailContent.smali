.class public abstract Lcom/android/emailcommon/provider/EmailContent;
.super Ljava/lang/Object;
.source "EmailContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/EmailContent$PolicyColumns;
    }
.end annotation


# static fields
.field public static final COUNT_PROJECTION:[Ljava/lang/String;

.field public static final ID_PROJECTION:[Ljava/lang/String;


# instance fields
.field public mBaseUri:Landroid/net/Uri;

.field public mId:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->COUNT_PROJECTION:[Ljava/lang/String;

    .line 83
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    .line 101
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 445
    return-void
.end method
