.class public Lcom/android/calendar/event/EventLocationAdapter$Result;
.super Ljava/lang/Object;
.source "EventLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventLocationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mContactPhotoUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultIcon:Ljava/lang/Integer;

.field private final mIsHeader:Z

.field private final mName:Ljava/lang/String;

.field private final mReference:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mName:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mAddress:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mDefaultIcon:Ljava/lang/Integer;

    .line 125
    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mContactPhotoUri:Landroid/net/Uri;

    .line 126
    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mReference:Ljava/lang/String;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mIsHeader:Z

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mName:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mAddress:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mDefaultIcon:Ljava/lang/Integer;

    .line 115
    iput-object p5, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mContactPhotoUri:Landroid/net/Uri;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mReference:Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mIsHeader:Z

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mName:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mAddress:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mReference:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mContactPhotoUri:Landroid/net/Uri;

    .line 94
    sget v0, Lcom/android/calendar/R$drawable;->ic_action_nav:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mDefaultIcon:Ljava/lang/Integer;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mIsHeader:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mName:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mAddress:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mReference:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mContactPhotoUri:Landroid/net/Uri;

    .line 105
    iput-object p5, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mDefaultIcon:Ljava/lang/Integer;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mIsHeader:Z

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/EventLocationAdapter$Result;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mIsHeader:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/EventLocationAdapter$Result;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/event/EventLocationAdapter$Result;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/EventLocationAdapter$Result;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mDefaultIcon:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/event/EventLocationAdapter$Result;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mContactPhotoUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public getReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mReference:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mReference:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->location_adapter_name_address_format:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mName:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mAddress:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->location_adapter_name_format:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$Result;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method
