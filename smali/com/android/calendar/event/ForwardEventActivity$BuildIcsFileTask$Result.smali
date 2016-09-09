.class public Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;
.super Ljava/lang/Object;
.source "ForwardEventActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field public final ownerEmail:Ljava/lang/String;

.field public final serverCollectionId:Ljava/lang/String;

.field public final serverItemId:Ljava/lang/String;

.field public final subject:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;

.field public final uid:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;->this$1:Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;->uri:Landroid/net/Uri;

    .line 83
    iput-object p3, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;->subject:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;->uid:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;->ownerEmail:Ljava/lang/String;

    .line 86
    iput-object p6, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;->serverCollectionId:Ljava/lang/String;

    .line 87
    iput-object p7, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;->serverItemId:Ljava/lang/String;

    .line 88
    return-void
.end method
