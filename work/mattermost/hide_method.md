---
export_on_save:
  html: true
---
```plantuml
@startuml
left to right direction
skinparam linetype polyline



namespace api4 {
    class API << (S,Aquamarine) >> {
        + BaseRoutes *Routes

        + Handle404(w http.ResponseWriter, r *http.Request) 
        + InitBleve() 
        + InitBot() 
        + InitBotLocal() 
        + InitBrand() 
        + InitChannel() 
        + InitChannelLocal() 
        + InitCloud() 
        + InitCluster() 
        + InitCommand() 
        + InitCommandLocal() 
        + InitCompliance() 
        + InitConfig() 
        + InitConfigLocal() 
        + InitDataRetention() 
        + InitDrafts() 
        + InitElasticsearch() 
        + InitEmoji() 
        + InitExport() 
        + InitExportLocal() 
        + InitFile() 
        + InitGroup() 
        + InitGroupLocal() 
        + APIHandler(h handlerFunc, opts ...APIHandlerOption) http.Handler
        + APISessionRequired(h handlerFunc, opts ...APIHandlerOption) http.Handler
        + CloudAPIKeyRequired(h handlerFunc, opts ...APIHandlerOption) http.Handler
        + RemoteClusterTokenRequired(h handlerFunc, opts ...APIHandlerOption) http.Handler
        + APISessionRequiredMfa(h handlerFunc, opts ...APIHandlerOption) http.Handler
        + APIHandlerTrustRequester(h handlerFunc, opts ...APIHandlerOption) http.Handler
        + APISessionRequiredTrustRequester(h handlerFunc, opts ...APIHandlerOption) http.Handler
        + APISessionRequiredDisableWhenBusy(h handlerFunc, opts ...APIHandlerOption) http.Handler
        + APILocal(h handlerFunc, opts ...APIHandlerOption) http.Handler
        + RateLimitedHandler(apiHandler http.Handler, settings model.RateLimitSettings) http.Handler
        + InitHostedCustomer() 
        + InitImage() 
        + InitImport() 
        + InitImportLocal() 
        + InitAction() 
        + InitIPFiltering() 
        + InitJob() 
        + InitJobLocal() 
        + InitLdap() 
        + InitLdapLocal() 
        + InitLicense() 
        + InitLicenseLocal() 
        + InitLimits() 
        + InitOAuth() 
        + InitOutgoingOAuthConnection() 
        + InitPermissions() 
        + InitPlugin() 
        + InitPluginLocal() 
        + InitPost() 
        + InitPostLocal() 
        + InitPreference() 
        + InitReaction() 
        + InitRemoteCluster() 
        + InitReports() 
        + InitRole() 
        + InitRoleLocal() 
        + InitSaml() 
        + InitSamlLocal() 
        + InitScheme() 
        + InitSharedChannels() 
        + InitStatus() 
        + InitSystem() 
        + InitSystemLocal() 
        + InitTeam() 
        + InitTeamLocal() 
        + InitTermsOfService() 
        + InitUpload() 
        + InitUploadLocal() 
        + InitUsage() 
        + InitUser() 
        + InitUserLocal() 
        + InitWebhook() 
        + InitWebhookLocal() 
        + InitWebSocket() 

    }
    class Routes << (S,Aquamarine) >> {
        + Root *mux.Router
        + APIRoot *mux.Router
        + APIRoot5 *mux.Router
        + Users *mux.Router
        + User *mux.Router
        + UserByUsername *mux.Router
        + UserByEmail *mux.Router
        + Bots *mux.Router
        + Bot *mux.Router
        + Teams *mux.Router
        + TeamsForUser *mux.Router
        + Team *mux.Router
        + TeamForUser *mux.Router
        + UserThreads *mux.Router
        + UserThread *mux.Router
        + TeamByName *mux.Router
        + TeamMembers *mux.Router
        + TeamMember *mux.Router
        + TeamMembersForUser *mux.Router
        + Channels *mux.Router
        + Channel *mux.Router
        + ChannelForUser *mux.Router
        + ChannelByName *mux.Router
        + ChannelByNameForTeamName *mux.Router
        + ChannelsForTeam *mux.Router
        + ChannelMembers *mux.Router
        + ChannelMember *mux.Router
        + ChannelMembersForUser *mux.Router
        + ChannelModerations *mux.Router
        + ChannelCategories *mux.Router
        + Posts *mux.Router
        + Post *mux.Router
        + PostsForChannel *mux.Router
        + PostsForUser *mux.Router
        + PostForUser *mux.Router
        + Files *mux.Router
        + File *mux.Router
        + Uploads *mux.Router
        + Upload *mux.Router
        + Plugins *mux.Router
        + Plugin *mux.Router
        + PublicFile *mux.Router
        + Commands *mux.Router
        + Command *mux.Router
        + Hooks *mux.Router
        + IncomingHooks *mux.Router
        + IncomingHook *mux.Router
        + OutgoingHooks *mux.Router
        + OutgoingHook *mux.Router
        + OAuth *mux.Router
        + OAuthApps *mux.Router
        + OAuthApp *mux.Router
        + SAML *mux.Router
        + Compliance *mux.Router
        + Cluster *mux.Router
        + Image *mux.Router
        + LDAP *mux.Router
        + Elasticsearch *mux.Router
        + Bleve *mux.Router
        + DataRetention *mux.Router
        + Brand *mux.Router
        + System *mux.Router
        + Jobs *mux.Router
        + Preferences *mux.Router
        + License *mux.Router
        + Public *mux.Router
        + Reactions *mux.Router
        + Roles *mux.Router
        + Schemes *mux.Router
        + Emojis *mux.Router
        + Emoji *mux.Router
        + EmojiByName *mux.Router
        + ReactionByNameForPostForUser *mux.Router
        + TermsOfService *mux.Router
        + Groups *mux.Router
        + Cloud *mux.Router
        + Imports *mux.Router
        + Exports *mux.Router
        + Export *mux.Router
        + RemoteCluster *mux.Router
        + SharedChannels *mux.Router
        + Permissions *mux.Router
        + Usage *mux.Router
        + HostedCustomer *mux.Router
        + Drafts *mux.Router
        + IPFiltering *mux.Router
        + Reports *mux.Router
        + Limits *mux.Router
        + OutgoingOAuthConnections *mux.Router
        + OutgoingOAuthConnection *mux.Router

    }
    class TestHelper << (S,Aquamarine) >> {
        + App *app.App
        + Server *app.Server
        + ConfigStore *config.Store
        + Context *request.Context
        + Client *model.Client4
        + BasicUser *model.User
        + BasicUser2 *model.User
        + TeamAdminUser *model.User
        + BasicTeam *model.Team
        + BasicChannel *model.Channel
        + BasicPrivateChannel *model.Channel
        + BasicPrivateChannel2 *model.Channel
        + BasicDeletedChannel *model.Channel
        + BasicChannel2 *model.Channel
        + BasicPost *model.Post
        + Group *model.Group
        + SystemAdminClient *model.Client4
        + SystemAdminUser *model.User
        + SystemManagerClient *model.Client4
        + SystemManagerUser *model.User
        + LocalClient *model.Client4
        + IncludeCacheLayer bool
        + LogBuffer *mlog.Buffer
        + TestLogger *mlog.Logger

        + ShutdownApp() 
        + TearDown() 
        + InitLogin() *TestHelper
        + InitBasic() *TestHelper
        + DeleteBots() *TestHelper
        + CreateClient() *model.Client4
        + CreateLocalClient(socketPath string) *model.Client4
        + CreateWebSocketClient() (*model.WebSocketClient, error)
        + CreateReliableWebSocketClient(connID string, seqNo int) (*model.WebSocketClient, error)
        + CreateWebSocketSystemAdminClient() (*model.WebSocketClient, error)
        + CreateWebSocketClientWithClient(client *model.Client4) (*model.WebSocketClient, error)
        + CreateBotWithSystemAdminClient() *model.Bot
        + CreateBotWithClient(client *model.Client4) *model.Bot
        + CreateUser() *model.User
        + CreateTeam() *model.Team
        + CreateTeamWithClient(client *model.Client4) *model.Team
        + CreateUserWithClient(client *model.Client4) *model.User
        + CreateUserWithAuth(authService string) *model.User
        + SetupLdapConfig() 
        + SetupSamlConfig() 
        + CreatePublicChannel() *model.Channel
        + CreatePrivateChannel() *model.Channel
        + CreateChannelWithClient(client *model.Client4, channelType model.ChannelType) *model.Channel
        + CreateChannelWithClientAndTeam(client *model.Client4, channelType model.ChannelType, teamID string) *model.Channel
        + CreatePost() *model.Post
        + CreatePinnedPost() *model.Post
        + CreateMessagePost(message string) *model.Post
        + CreatePostWithFiles(files ...*model.FileInfo) *model.Post
        + CreatePostInChannelWithFiles(channel *model.Channel, files ...*model.FileInfo) *model.Post
        + CreatePostWithFilesWithClient(client *model.Client4, channel *model.Channel, files ...*model.FileInfo) *model.Post
        + CreatePostWithClient(client *model.Client4, channel *model.Channel) *model.Post
        + CreatePinnedPostWithClient(client *model.Client4, channel *model.Channel) *model.Post
        + CreateMessagePostWithClient(client *model.Client4, channel *model.Channel, message string) *model.Post
        + CreateMessagePostNoClient(channel *model.Channel, message string, createAtTime int64) *model.Post
        + CreateDmChannel(user *model.User) *model.Channel
        + LoginBasic() 
        + LoginBasic2() 
        + LoginTeamAdmin() 
        + LoginSystemAdmin() 
        + LoginSystemManager() 
        + LoginBasicWithClient(client *model.Client4) 
        + LoginBasic2WithClient(client *model.Client4) 
        + LoginTeamAdminWithClient(client *model.Client4) 
        + LoginSystemManagerWithClient(client *model.Client4) 
        + LoginSystemAdminWithClient(client *model.Client4) 
        + UpdateActiveUser(user *model.User, active bool) 
        + LinkUserToTeam(user *model.User, team *model.Team) 
        + UnlinkUserFromTeam(user *model.User, team *model.Team) 
        + AddUserToChannel(user *model.User, channel *model.Channel) *model.ChannelMember
        + RemoveUserFromChannel(user *model.User, channel *model.Channel) 
        + GenerateTestEmail() string
        + CreateGroup() *model.Group
        + TestForSystemAdminAndLocal(t *testing.T, f <font color=blue>func</font>(*testing.T, *model.Client4) , name ...string) 
        + TestForAllClients(t *testing.T, f <font color=blue>func</font>(*testing.T, *model.Client4) , name ...string) 
        + MakeUserChannelAdmin(user *model.User, channel *model.Channel) 
        + UpdateUserToTeamAdmin(user *model.User, team *model.Team) 
        + UpdateUserToNonTeamAdmin(user *model.User, team *model.Team) 
        + SaveDefaultRolePermissions() <font color=blue>map</font>[string][]string
        + RestoreDefaultRolePermissions(data <font color=blue>map</font>[string][]string) 
        + RemovePermissionFromRole(permission string, roleName string) 
        + AddPermissionToRole(permission string, roleName string) 
        + SetupTeamScheme() *model.Scheme
        + SetupChannelScheme() *model.Scheme
        + SetupScheme(scope string) *model.Scheme

    }
    class api4.APIHandlerOption << (T, #FF7700) >>  {
    }
    class api4.Context << (T, #FF7700) >>  {
    }
    class api4.filterType << (T, #FF7700) >>  {
    }
    class api4.handlerFunc << (T, #FF7700) >>  {
    }
    class listOutgoingOAuthConnectionsQuery << (S,Aquamarine) >> {
        + FromID string
        + Limit int
        + Audience string

        + SetDefaults() 
        + IsValid() error
        + ToFilter() model.OutgoingOAuthConnectionGetConnectionsFilter

    }
    class mixedUnlinkedGroup << (S,Aquamarine) >> {
        + ID *string
        + DisplayName string
        + RemoteID string
        + HasSyncables *bool

    }
    class "<font color=blue>func</font>(*Context, http.ResponseWriter, *http.Request) " as fontcolorbluefuncfontContexthttpResponseWriterhttpRequest {
        'This class was created so that we can correctly have an alias pointing to this name. Since it contains dots that can break namespaces
    }
    class "web.Context" as webContext {
        'This class was created so that we can correctly have an alias pointing to this name. Since it contains dots that can break namespaces
    }
}


namespace app {
    class App << (S,Aquamarine) >> {
        + QueryLogs(rctx request.CTX, page int, perPage int, logFilter *model.LogFilter) (<font color=blue>map</font>[string][]string, *model.AppError)
        + GetLogs(rctx request.CTX, page int, perPage int) ([]string, *model.AppError)
        + GetLogsSkipSend(rctx request.CTX, page int, perPage int, logFilter *model.LogFilter) ([]string, *model.AppError)
        + GetClusterStatus(rctx request.CTX) []*model.ClusterInfo
        + RecycleDatabaseConnection(rctx request.CTX) 
        + TestSiteURL(rctx request.CTX, siteURL string) *model.AppError
        + TestEmail(rctx request.CTX, userID string, cfg *model.Config) *model.AppError
        + GetLatestVersion(rctx request.CTX, latestVersionUrl string) (*model.GithubReleaseInfo, *model.AppError)
        + ClearLatestVersionCache(rctx request.CTX) 
        + GetAnalytics(name string, teamID string) (model.AnalyticsRows, *model.AppError)
        + GetRecentlyActiveUsersForTeam(teamID string) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetRecentlyActiveUsersForTeamPage(teamID string, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetNewUsersForTeamPage(teamID string, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + TelemetryId() string
        + Channels() *Channels
        + Srv() *Server
        + Log() *mlog.Logger
        + NotificationsLog() *mlog.Logger
        + AccountMigration() einterfaces.AccountMigrationInterface
        + Cluster() einterfaces.ClusterInterface
        + Compliance() einterfaces.ComplianceInterface
        + DataRetention() einterfaces.DataRetentionInterface
        + SearchEngine() *searchengine.Broker
        + Ldap() einterfaces.LdapInterface
        + MessageExport() einterfaces.MessageExportInterface
        + Metrics() einterfaces.MetricsInterface
        + Notification() einterfaces.NotificationInterface
        + Saml() einterfaces.SamlInterface
        + Cloud() einterfaces.CloudInterface
        + IPFiltering() einterfaces.IPFilteringInterface
        + OutgoingOAuthConnections() einterfaces.OutgoingOAuthConnectionInterface
        + HTTPService() httpservice.HTTPService
        + ImageProxy() *imageproxy.ImageProxy
        + Timezones() *timezones.Timezones
        + License() *model.License
        + DBHealthCheckWrite() error
        + DBHealthCheckDelete() error
        + CheckIntegrity() <font color=blue>chan</font> model.IntegrityCheckResult
        + SetChannels(ch *Channels) 
        + SetServer(srv *Server) 
        + UpdateExpiredDNDStatuses() ([]*model.Status, error)
        + GetAudits(rctx request.CTX, userID string, limit int) (model.Audits, *model.AppError)
        + GetAuditsPage(rctx request.CTX, userID string, page int, perPage int) (model.Audits, *model.AppError)
        + LogAuditRec(rctx request.CTX, rec *audit.Record, err error) 
        + LogAuditRecWithLevel(rctx request.CTX, rec *audit.Record, level mlog.Level, err error) 
        + MakeAuditRecord(rctx request.CTX, event string, initialStatus string) *audit.Record
        + IsPasswordValid(rctx request.CTX, password string) *model.AppError
        + CheckPasswordAndAllCriteria(rctx request.CTX, user *model.User, password string, mfaToken string) *model.AppError
        + DoubleCheckPassword(rctx request.CTX, user *model.User, password string) *model.AppError
        + CheckUserAllAuthenticationCriteria(rctx request.CTX, user *model.User, mfaToken string) *model.AppError
        + CheckUserPreflightAuthenticationCriteria(rctx request.CTX, user *model.User, mfaToken string) *model.AppError
        + CheckUserPostflightAuthenticationCriteria(rctx request.CTX, user *model.User) *model.AppError
        + CheckUserMfa(rctx request.CTX, user *model.User, token string) *model.AppError
        + SessionHasPermissionTo(session model.Session, permission *model.Permission) bool
        + SessionHasPermissionToAny(session model.Session, permissions []*model.Permission) bool
        + SessionHasPermissionToTeam(session model.Session, teamID string, permission *model.Permission) bool
        + SessionHasPermissionToTeams(c request.CTX, session model.Session, teamIDs []string, permission *model.Permission) bool
        + SessionHasPermissionToChannel(c request.CTX, session model.Session, channelID string, permission *model.Permission) bool
        + SessionHasPermissionToChannels(c request.CTX, session model.Session, channelIDs []string, permission *model.Permission) bool
        + SessionHasPermissionToGroup(session model.Session, groupID string, permission *model.Permission) bool
        + SessionHasPermissionToChannelByPost(session model.Session, postID string, permission *model.Permission) bool
        + SessionHasPermissionToCategory(c request.CTX, session model.Session, userID string, teamID string, categoryId string) bool
        + SessionHasPermissionToUser(session model.Session, userID string) bool
        + SessionHasPermissionToUserOrBot(session model.Session, userID string) bool
        + HasPermissionTo(askingUserId string, permission *model.Permission) bool
        + HasPermissionToTeam(c request.CTX, askingUserId string, teamID string, permission *model.Permission) bool
        + HasPermissionToChannel(c request.CTX, askingUserId string, channelID string, permission *model.Permission) bool
        + HasPermissionToChannelByPost(c request.CTX, askingUserId string, postID string, permission *model.Permission) bool
        + HasPermissionToUser(askingUserId string, userID string) bool
        + RolesGrantPermission(roleNames []string, permissionId string) bool
        + SessionHasPermissionToManageBot(session model.Session, botUserId string) *model.AppError
        + HasPermissionToReadChannel(c request.CTX, userID string, channel *model.Channel) bool
        + SendAutoResponseIfNecessary(rctx request.CTX, channel *model.Channel, sender *model.User, post *model.Post) (bool, *model.AppError)
        + SendAutoResponse(rctx request.CTX, channel *model.Channel, receiver *model.User, post *model.Post) (bool, *model.AppError)
        + SetAutoResponderStatus(rctx request.CTX, user *model.User, oldNotifyProps model.StringMap) 
        + DisableAutoResponder(rctx request.CTX, userID string, asAdmin bool) *model.AppError
        + EnsureBot(rctx request.CTX, pluginID string, bot *model.Bot) (string, error)
        + CreateBot(c request.CTX, bot *model.Bot) (*model.Bot, *model.AppError)
        + GetSystemBot(rctx request.CTX) (*model.Bot, *model.AppError)
        + PatchBot(rctx request.CTX, botUserId string, botPatch *model.BotPatch) (*model.Bot, *model.AppError)
        + GetBot(botUserId string, includeDeleted bool) (*model.Bot, *model.AppError)
        + GetBots(options *model.BotGetOptions) (model.BotList, *model.AppError)
        + UpdateBotActive(c request.CTX, botUserId string, active bool) (*model.Bot, *model.AppError)
        + PermanentDeleteBot(botUserId string) *model.AppError
        + UpdateBotOwner(botUserId string, newOwnerId string) (*model.Bot, *model.AppError)
        + ConvertUserToBot(user *model.User) (*model.Bot, *model.AppError)
        + SaveBrandImage(rctx request.CTX, imageData *multipart.FileHeader) *model.AppError
        + GetBrandImage(rctx request.CTX) ([]byte, *model.AppError)
        + DeleteBrandImage(rctx request.CTX) *model.AppError
        + DefaultChannelNames(c request.CTX) []string
        + JoinDefaultChannels(c request.CTX, teamID string, user *model.User, shouldBeAdmin bool, userRequestorId string) *model.AppError
        + CreateChannelWithUser(c request.CTX, channel *model.Channel, userID string) (*model.Channel, *model.AppError)
        + RenameChannel(c request.CTX, channel *model.Channel, newChannelName string, newDisplayName string) (*model.Channel, *model.AppError)
        + CreateChannel(c request.CTX, channel *model.Channel, addMember bool) (*model.Channel, *model.AppError)
        + GetOrCreateDirectChannel(c request.CTX, userID string, otherUserID string, channelOptions ...model.ChannelOption) (*model.Channel, *model.AppError)
        + CreateGroupChannel(c request.CTX, userIDs []string, creatorId string) (*model.Channel, *model.AppError)
        + GetGroupChannel(c request.CTX, userIDs []string) (*model.Channel, *model.AppError)
        + UpdateChannel(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + CreateChannelScheme(c request.CTX, channel *model.Channel) (*model.Scheme, *model.AppError)
        + DeleteChannelScheme(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + UpdateChannelScheme(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + UpdateChannelPrivacy(c request.CTX, oldChannel *model.Channel, user *model.User) (*model.Channel, *model.AppError)
        + RestoreChannel(c request.CTX, channel *model.Channel, userID string) (*model.Channel, *model.AppError)
        + PatchChannel(c request.CTX, channel *model.Channel, patch *model.ChannelPatch, userID string) (*model.Channel, *model.AppError)
        + GetSchemeRolesForChannel(c request.CTX, channelID string) (string, string, string, *model.AppError)
        + GetTeamSchemeChannelRoles(c request.CTX, teamID string) (string, string, string, *model.AppError)
        + GetChannelModerationsForChannel(c request.CTX, channel *model.Channel) ([]*model.ChannelModeration, *model.AppError)
        + PatchChannelModerationsForChannel(c request.CTX, channel *model.Channel, channelModerationsPatch []*model.ChannelModerationPatch) ([]*model.ChannelModeration, *model.AppError)
        + UpdateChannelMemberRoles(c request.CTX, channelID string, userID string, newRoles string) (*model.ChannelMember, *model.AppError)
        + UpdateChannelMemberSchemeRoles(c request.CTX, channelID string, userID string, isSchemeGuest bool, isSchemeUser bool, isSchemeAdmin bool) (*model.ChannelMember, *model.AppError)
        + UpdateChannelMemberNotifyProps(c request.CTX, data <font color=blue>map</font>[string]string, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + PatchChannelMembersNotifyProps(c request.CTX, members []*model.ChannelMemberIdentifier, notifyProps <font color=blue>map</font>[string]string) ([]*model.ChannelMember, *model.AppError)
        + DeleteChannel(c request.CTX, channel *model.Channel, userID string) *model.AppError
        + AddUserToChannel(c request.CTX, user *model.User, channel *model.Channel, skipTeamMemberIntegrityCheck bool) (*model.ChannelMember, *model.AppError)
        + AddChannelMember(c request.CTX, userID string, channel *model.Channel, opts ChannelMemberOpts) (*model.ChannelMember, *model.AppError)
        + AddDirectChannels(c request.CTX, teamID string, user *model.User) *model.AppError
        + PostUpdateChannelHeaderMessage(c request.CTX, userID string, channel *model.Channel, oldChannelHeader string, newChannelHeader string) *model.AppError
        + PostUpdateChannelPurposeMessage(c request.CTX, userID string, channel *model.Channel, oldChannelPurpose string, newChannelPurpose string) *model.AppError
        + PostUpdateChannelDisplayNameMessage(c request.CTX, userID string, channel *model.Channel, oldChannelDisplayName string, newChannelDisplayName string) *model.AppError
        + GetChannel(c request.CTX, channelID string) (*model.Channel, *model.AppError)
        + GetChannels(c request.CTX, channelIDs []string) ([]*model.Channel, *model.AppError)
        + GetChannelsMemberCount(c request.CTX, channelIDs []string) (<font color=blue>map</font>[string]int64, *model.AppError)
        + GetChannelByName(c request.CTX, channelName string, teamID string, includeDeleted bool) (*model.Channel, *model.AppError)
        + GetChannelsByNames(c request.CTX, channelNames []string, teamID string) ([]*model.Channel, *model.AppError)
        + GetChannelByNameForTeamName(c request.CTX, channelName string, teamName string, includeDeleted bool) (*model.Channel, *model.AppError)
        + GetChannelsForTeamForUser(c request.CTX, teamID string, userID string, opts *model.ChannelSearchOpts) (model.ChannelList, *model.AppError)
        + GetChannelsForUser(c request.CTX, userID string, includeDeleted bool, lastDeleteAt int, pageSize int, fromChannelID string) (model.ChannelList, *model.AppError)
        + GetAllChannels(c request.CTX, page int, perPage int, opts model.ChannelSearchOpts) (model.ChannelListWithTeamData, *model.AppError)
        + GetAllChannelsCount(c request.CTX, opts model.ChannelSearchOpts) (int64, *model.AppError)
        + GetDeletedChannels(c request.CTX, teamID string, offset int, limit int, userID string) (model.ChannelList, *model.AppError)
        + GetChannelsUserNotIn(c request.CTX, teamID string, userID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetPublicChannelsByIdsForTeam(c request.CTX, teamID string, channelIDs []string) (model.ChannelList, *model.AppError)
        + GetPublicChannelsForTeam(c request.CTX, teamID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetPrivateChannelsForTeam(c request.CTX, teamID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetChannelMember(c request.CTX, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + GetChannelMembersPage(c request.CTX, channelID string, page int, perPage int) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersTimezones(c request.CTX, channelID string) ([]string, *model.AppError)
        + GetChannelMembersByIds(c request.CTX, channelID string, userIDs []string) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersForUser(c request.CTX, teamID string, userID string) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersForUserWithPagination(c request.CTX, userID string, page int, perPage int) ([]*model.ChannelMember, *model.AppError)
        + GetChannelMembersWithTeamDataForUserWithPagination(c request.CTX, userID string, page int, perPage int) (model.ChannelMembersWithTeamData, *model.AppError)
        + GetChannelMemberCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelFileCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelGuestCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelPinnedPostCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelCounts(c request.CTX, teamID string, userID string) (*model.ChannelCounts, *model.AppError)
        + GetChannelUnread(c request.CTX, channelID string, userID string) (*model.ChannelUnread, *model.AppError)
        + JoinChannel(c request.CTX, channel *model.Channel, userID string) *model.AppError
        + LeaveChannel(c request.CTX, channelID string, userID string) *model.AppError
        + PostAddToChannelMessage(c request.CTX, user *model.User, addedUser *model.User, channel *model.Channel, postRootId string) *model.AppError
        + RemoveUserFromChannel(c request.CTX, userIDToRemove string, removerUserId string, channel *model.Channel) *model.AppError
        + GetNumberOfChannelsOnTeam(c request.CTX, teamID string) (int, *model.AppError)
        + SetActiveChannel(c request.CTX, userID string, channelID string) *model.AppError
        + IsCRTEnabledForUser(c request.CTX, userID string) bool
        + ValidateUserPermissionsOnChannels(c request.CTX, userId string, channelIds []string) []string
        + MarkChannelAsUnreadFromPost(c request.CTX, postID string, userID string, collapsedThreadsSupported bool) (*model.ChannelUnreadAt, *model.AppError)
        + AutocompleteChannels(c request.CTX, userID string, term string) (model.ChannelListWithTeamData, *model.AppError)
        + AutocompleteChannelsForTeam(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + AutocompleteChannelsForSearch(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + SearchAllChannels(c request.CTX, term string, opts model.ChannelSearchOpts) (model.ChannelListWithTeamData, int64, *model.AppError)
        + SearchChannels(c request.CTX, teamID string, term string) (model.ChannelList, *model.AppError)
        + SearchArchivedChannels(c request.CTX, teamID string, term string, userID string) (model.ChannelList, *model.AppError)
        + SearchChannelsForUser(c request.CTX, userID string, teamID string, term string) (model.ChannelList, *model.AppError)
        + SearchGroupChannels(c request.CTX, userID string, term string) (model.ChannelList, *model.AppError)
        + SearchChannelsUserNotIn(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + MarkChannelsAsViewed(c request.CTX, channelIDs []string, userID string, currentSessionId string, collapsedThreadsSupported bool, isCRTEnabled bool) (<font color=blue>map</font>[string]int64, *model.AppError)
        + ViewChannel(c request.CTX, view *model.ChannelView, userID string, currentSessionId string, collapsedThreadsSupported bool) (<font color=blue>map</font>[string]int64, *model.AppError)
        + PermanentDeleteChannel(c request.CTX, channel *model.Channel) *model.AppError
        + RemoveAllDeactivatedMembersFromChannel(c request.CTX, channel *model.Channel) *model.AppError
        + MoveChannel(c request.CTX, team *model.Team, channel *model.Channel, user *model.User) *model.AppError
        + RemoveUsersFromChannelNotMemberOfTeam(c request.CTX, remover *model.User, channel *model.Channel, team *model.Team) *model.AppError
        + GetPinnedPosts(c request.CTX, channelID string) (*model.PostList, *model.AppError)
        + ToggleMuteChannel(c request.CTX, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + FillInChannelProps(c request.CTX, channel *model.Channel) *model.AppError
        + FillInChannelsProps(c request.CTX, channelList model.ChannelList) *model.AppError
        + ClearChannelMembersCache(c request.CTX, channelID string) error
        + GetMemberCountsByGroup(rctx request.CTX, channelID string, includeTimezones bool) ([]*model.ChannelMemberCountByGroup, *model.AppError)
        + GetGroupMessageMembersCommonTeams(c request.CTX, channelID string) ([]*model.Team, *model.AppError)
        + ConvertGroupMessageToChannel(c request.CTX, convertedByUserId string, gmConversionRequest *model.GroupMessageConversionRequestBody) (*model.Channel, *model.AppError)
        + GetSidebarCategoriesForTeamForUser(c request.CTX, userID string, teamID string) (*model.OrderedSidebarCategories, *model.AppError)
        + GetSidebarCategories(c request.CTX, userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, *model.AppError)
        + GetSidebarCategoryOrder(c request.CTX, userID string, teamID string) ([]string, *model.AppError)
        + GetSidebarCategory(c request.CTX, categoryId string) (*model.SidebarCategoryWithChannels, *model.AppError)
        + CreateSidebarCategory(c request.CTX, userID string, teamID string, newCategory *model.SidebarCategoryWithChannels) (*model.SidebarCategoryWithChannels, *model.AppError)
        + UpdateSidebarCategoryOrder(c request.CTX, userID string, teamID string, categoryOrder []string) *model.AppError
        + UpdateSidebarCategories(c request.CTX, userID string, teamID string, categories []*model.SidebarCategoryWithChannels) ([]*model.SidebarCategoryWithChannels, *model.AppError)
        + DeleteSidebarCategory(c request.CTX, userID string, teamID string, categoryId string) *model.AppError
        + SendPaymentFailedEmail(failedPayment *model.FailedPayment) *model.AppError
        + SendDelinquencyEmail(emailToSend model.DelinquencyEmail) *model.AppError
        + AdjustInProductLimits(limits *model.ProductLimits, subscription *model.Subscription) *model.AppError
        + SendUpgradeConfirmationEmail(isYearly bool) *model.AppError
        + SendNoCardPaymentFailedEmail() *model.AppError
        + SendSubscriptionHistoryEvent(userID string) (*model.SubscriptionHistory, error)
        + DoSubscriptionRenewalCheck() 
        + IsLeader() bool
        + GetClusterId() string
        + CreateCommandPost(c request.CTX, post *model.Post, teamID string, response *model.CommandResponse, skipSlackParsing bool) (*model.Post, *model.AppError)
        + ListAutocompleteCommands(teamID string, T i18n.TranslateFunc) ([]*model.Command, *model.AppError)
        + ListTeamCommands(teamID string) ([]*model.Command, *model.AppError)
        + ListAllCommands(teamID string, T i18n.TranslateFunc) ([]*model.Command, *model.AppError)
        + ExecuteCommand(c request.CTX, args *model.CommandArgs) (*model.CommandResponse, *model.AppError)
        + MentionsToTeamMembers(c request.CTX, message string, teamID string) model.UserMentionMap
        + MentionsToPublicChannels(c request.CTX, message string, teamID string) model.ChannelMentionMap
        + DoCommandRequest(rctx request.CTX, cmd *model.Command, p url.Values) (*model.Command, *model.CommandResponse, *model.AppError)
        + HandleCommandResponse(c request.CTX, command *model.Command, args *model.CommandArgs, response *model.CommandResponse, builtIn bool) (*model.CommandResponse, *model.AppError)
        + HandleCommandResponsePost(c request.CTX, command *model.Command, args *model.CommandArgs, response *model.CommandResponse, builtIn bool) (*model.Post, *model.AppError)
        + CreateCommand(cmd *model.Command) (*model.Command, *model.AppError)
        + GetCommand(commandID string) (*model.Command, *model.AppError)
        + UpdateCommand(oldCmd *model.Command, updatedCmd *model.Command) (*model.Command, *model.AppError)
        + MoveCommand(team *model.Team, command *model.Command) *model.AppError
        + RegenCommandToken(cmd *model.Command) (*model.Command, *model.AppError)
        + DeleteCommand(commandID string) *model.AppError
        + GetSuggestions(c request.CTX, commandArgs *model.CommandArgs, commands []*model.Command, roleID string) []model.AutocompleteSuggestion
        + GetComplianceReports(page int, perPage int) (model.Compliances, *model.AppError)
        + SaveComplianceReport(rctx request.CTX, job *model.Compliance) (*model.Compliance, *model.AppError)
        + GetComplianceReport(reportId string) (*model.Compliance, *model.AppError)
        + GetComplianceFile(job *model.Compliance) ([]byte, *model.AppError)
        + Config() *model.Config
        + EnvironmentConfig(filter <font color=blue>func</font>(reflect.StructField) bool) <font color=blue>map</font>[string]any
        + UpdateConfig(f <font color=blue>func</font>(*model.Config) ) 
        + IsConfigReadOnly() bool
        + ReloadConfig() error
        + ClientConfig() <font color=blue>map</font>[string]string
        + ClientConfigHash() string
        + LimitedClientConfig() <font color=blue>map</font>[string]string
        + AddConfigListener(listener <font color=blue>func</font>(*model.Config, *model.Config) ) string
        + RemoveConfigListener(id string) 
        + AsymmetricSigningKey() *ecdsa.PrivateKey
        + PostActionCookieSecret() []byte
        + GetCookieDomain() string
        + GetSiteURL() string
        + GetConfigFile(name string) ([]byte, error)
        + GetSanitizedConfig() *model.Config
        + GetEnvironmentConfig(filter <font color=blue>func</font>(reflect.StructField) bool) <font color=blue>map</font>[string]any
        + SaveConfig(newCfg *model.Config, sendConfigChangeClusterMessage bool) (*model.Config, *model.Config, *model.AppError)
        + HandleMessageExportConfig(cfg *model.Config, appCfg *model.Config) 
        + GetGlobalRetentionPolicy() (*model.GlobalRetentionPolicy, *model.AppError)
        + GetRetentionPolicies(offset int, limit int) (*model.RetentionPolicyWithTeamAndChannelCountsList, *model.AppError)
        + GetRetentionPoliciesCount() (int64, *model.AppError)
        + GetRetentionPolicy(policyID string) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + CreateRetentionPolicy(policy *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + PatchRetentionPolicy(patch *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + DeleteRetentionPolicy(policyID string) *model.AppError
        + GetTeamsForRetentionPolicy(policyID string, offset int, limit int) (*model.TeamsWithCount, *model.AppError)
        + AddTeamsToRetentionPolicy(policyID string, teamIDs []string) *model.AppError
        + RemoveTeamsFromRetentionPolicy(policyID string, teamIDs []string) *model.AppError
        + GetChannelsForRetentionPolicy(policyID string, offset int, limit int) (*model.ChannelsWithCount, *model.AppError)
        + AddChannelsToRetentionPolicy(policyID string, channelIDs []string) *model.AppError
        + RemoveChannelsFromRetentionPolicy(policyID string, channelIDs []string) *model.AppError
        + GetTeamPoliciesForUser(userID string, offset int, limit int) (*model.RetentionPolicyForTeamList, *model.AppError)
        + GetChannelPoliciesForUser(userID string, offset int, limit int) (*model.RetentionPolicyForChannelList, *model.AppError)
        + GenerateAndSaveDesktopToken(createAt int64, user *model.User) (*string, *model.AppError)
        + ValidateDesktopToken(token string, expiryTime int64) (*model.User, *model.AppError)
        + DownloadFromURL(downloadURL string) ([]byte, error)
        + GetDraft(userID string, channelID string, rootID string) (*model.Draft, *model.AppError)
        + UpsertDraft(c request.CTX, draft *model.Draft, connectionID string) (*model.Draft, *model.AppError)
        + GetDraftsForUser(rctx request.CTX, userID string, teamID string) ([]*model.Draft, *model.AppError)
        + DeleteDraft(rctx request.CTX, draft *model.Draft, connectionID string) *model.AppError
        + CreateEmoji(c request.CTX, sessionUserId string, emoji *model.Emoji, multiPartImageData *multipart.Form) (*model.Emoji, *model.AppError)
        + GetEmojiList(c request.CTX, page int, perPage int, sort string) ([]*model.Emoji, *model.AppError)
        + DeleteEmoji(c request.CTX, emoji *model.Emoji) *model.AppError
        + GetEmoji(c request.CTX, emojiId string) (*model.Emoji, *model.AppError)
        + GetEmojiByName(c request.CTX, emojiName string) (*model.Emoji, *model.AppError)
        + GetMultipleEmojiByName(c request.CTX, names []string) ([]*model.Emoji, *model.AppError)
        + GetEmojiImage(c request.CTX, emojiId string) ([]byte, string, *model.AppError)
        + SearchEmoji(c request.CTX, name string, prefixOnly bool, limit int) ([]*model.Emoji, *model.AppError)
        + GetEmojiStaticURL(c request.CTX, emojiName string) (string, *model.AppError)
        + NotifySessionsExpired() error
        + BulkExport(ctx request.CTX, writer io.Writer, outPath string, job *model.Job, opts model.BulkExportOpts) *model.AppError
        + BuildPostReactions(ctx request.CTX, postID string) (*[]ReactionImportData, *model.AppError)
        + ListExports() ([]string, *model.AppError)
        + GeneratePresignURLForExport(name string) (*model.PresignURLResponse, *model.AppError)
        + DeleteExport(name string) *model.AppError
        + FileBackend() filestore.FileBackend
        + ExportFileBackend() filestore.FileBackend
        + CheckMandatoryS3Fields(settings *model.FileSettings) *model.AppError
        + TestFileStoreConnection() *model.AppError
        + TestFileStoreConnectionWithConfig(cfg *model.FileSettings) *model.AppError
        + ReadFile(path string) ([]byte, *model.AppError)
        + FileReader(path string) (filestore.ReadCloseSeeker, *model.AppError)
        + ExportFileReader(path string) (filestore.ReadCloseSeeker, *model.AppError)
        + FileExists(path string) (bool, *model.AppError)
        + ExportFileExists(path string) (bool, *model.AppError)
        + FileSize(path string) (int64, *model.AppError)
        + FileModTime(path string) (time.Time, *model.AppError)
        + ExportFileModTime(path string) (time.Time, *model.AppError)
        + MoveFile(oldPath string, newPath string) *model.AppError
        + WriteFileContext(ctx context.Context, fr io.Reader, path string) (int64, *model.AppError)
        + WriteFile(fr io.Reader, path string) (int64, *model.AppError)
        + WriteExportFileContext(ctx context.Context, fr io.Reader, path string) (int64, *model.AppError)
        + WriteExportFile(fr io.Reader, path string) (int64, *model.AppError)
        + AppendFile(fr io.Reader, path string) (int64, *model.AppError)
        + RemoveFile(path string) *model.AppError
        + RemoveExportFile(path string) *model.AppError
        + ListDirectory(path string) ([]string, *model.AppError)
        + ListExportDirectory(path string) ([]string, *model.AppError)
        + ListDirectoryRecursively(path string) ([]string, *model.AppError)
        + RemoveDirectory(path string) *model.AppError
        + MigrateFilenamesToFileInfos(rctx request.CTX, post *model.Post) []*model.FileInfo
        + GeneratePublicLink(siteURL string, info *model.FileInfo) string
        + UploadFile(c request.CTX, data []byte, channelID string, filename string) (*model.FileInfo, *model.AppError)
        + UploadFileForUserAndTeam(c request.CTX, data []byte, channelID string, filename string, rawUserId string, rawTeamId string) (*model.FileInfo, *model.AppError)
        + DoUploadFile(c request.CTX, now time.Time, rawTeamId string, rawChannelId string, rawUserId string, rawFilename string, data []byte) (*model.FileInfo, *model.AppError)
        + UploadFileX(c request.CTX, channelID string, name string, input io.Reader, opts ...<font color=blue>func</font>(*UploadFileTask) ) (*model.FileInfo, *model.AppError)
        + DoUploadFileExpectModification(c request.CTX, now time.Time, rawTeamId string, rawChannelId string, rawUserId string, rawFilename string, data []byte) (*model.FileInfo, []byte, *model.AppError)
        + HandleImages(rctx request.CTX, previewPathList []string, thumbnailPathList []string, fileData [][]byte) 
        + GetFileInfo(rctx request.CTX, fileID string) (*model.FileInfo, *model.AppError)
        + SetFileSearchableContent(rctx request.CTX, fileID string, data string) *model.AppError
        + GetFileInfos(rctx request.CTX, page int, perPage int, opt *model.GetFileInfosOptions) ([]*model.FileInfo, *model.AppError)
        + GetFile(rctx request.CTX, fileID string) ([]byte, *model.AppError)
        + CopyFileInfos(rctx request.CTX, userID string, fileIDs []string) ([]string, *model.AppError)
        + CreateZipFileAndAddFiles(fileBackend filestore.FileBackend, fileDatas []model.FileData, zipFileName string, directory string) error
        + SearchFilesInTeamForUser(c request.CTX, terms string, userId string, teamId string, isOrSearch bool, includeDeletedChannels bool, timeZoneOffset int, page int, perPage int) (*model.FileInfoList, *model.AppError)
        + ExtractContentFromFileInfo(rctx request.CTX, fileInfo *model.FileInfo) error
        + GetLastAccessibleFileTime() (int64, *model.AppError)
        + ComputeLastAccessibleFileTime() error
        + GetGroup(id string, opts *model.GetGroupOpts, viewRestrictions *model.ViewUsersRestrictions) (*model.Group, *model.AppError)
        + GetGroupByName(name string, opts model.GroupSearchOpts) (*model.Group, *model.AppError)
        + GetGroupByRemoteID(remoteID string, groupSource model.GroupSource) (*model.Group, *model.AppError)
        + GetGroupsBySource(groupSource model.GroupSource) ([]*model.Group, *model.AppError)
        + GetGroupsByUserId(userID string) ([]*model.Group, *model.AppError)
        + CreateGroup(group *model.Group) (*model.Group, *model.AppError)
        + CreateGroupWithUserIds(group *model.GroupWithUserIds) (*model.Group, *model.AppError)
        + UpdateGroup(group *model.Group) (*model.Group, *model.AppError)
        + DeleteGroup(groupID string) (*model.Group, *model.AppError)
        + RestoreGroup(groupID string) (*model.Group, *model.AppError)
        + GetGroupMemberCount(groupID string, viewRestrictions *model.ViewUsersRestrictions) (int64, *model.AppError)
        + GetGroupMemberUsers(groupID string) ([]*model.User, *model.AppError)
        + GetGroupMemberUsersSortedPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions, teammateNameDisplay string) ([]*model.User, int, *model.AppError)
        + GetGroupMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, int, *model.AppError)
        + GetUsersNotInGroupPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + UpsertGroupMember(groupID string, userID string) (*model.GroupMember, *model.AppError)
        + DeleteGroupMember(groupID string, userID string) (*model.GroupMember, *model.AppError)
        + UpsertGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, *model.AppError)
        + GetGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, *model.AppError)
        + GetGroupSyncables(groupID string, syncableType model.GroupSyncableType) ([]*model.GroupSyncable, *model.AppError)
        + UpdateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, *model.AppError)
        + DeleteGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, *model.AppError)
        + TeamMembersToAdd(since int64, teamID *string, includeRemovedMembers bool) ([]*model.UserTeamIDPair, *model.AppError)
        + ChannelMembersToAdd(since int64, channelID *string, includeRemovedMembers bool) ([]*model.UserChannelIDPair, *model.AppError)
        + TeamMembersToRemove(teamID *string) ([]*model.TeamMember, *model.AppError)
        + ChannelMembersToRemove(teamID *string) ([]*model.ChannelMember, *model.AppError)
        + GetGroupsByChannel(channelID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, int, *model.AppError)
        + GetGroupsByTeam(teamID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, int, *model.AppError)
        + GetGroupsAssociatedToChannelsByTeam(teamID string, opts model.GroupSearchOpts) (<font color=blue>map</font>[string][]*model.GroupWithSchemeAdmin, *model.AppError)
        + GetGroups(page int, perPage int, opts model.GroupSearchOpts, viewRestrictions *model.ViewUsersRestrictions) ([]*model.Group, *model.AppError)
        + TeamMembersMinusGroupMembers(teamID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, int64, *model.AppError)
        + GetGroupsByIDs(groupIDs []string) ([]*model.Group, *model.AppError)
        + ChannelMembersMinusGroupMembers(channelID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, int64, *model.AppError)
        + UserIsInAdminRoleGroup(userID string, syncableID string, syncableType model.GroupSyncableType) (bool, *model.AppError)
        + UpsertGroupMembers(groupID string, userIDs []string) ([]*model.GroupMember, *model.AppError)
        + DeleteGroupMembers(groupID string, userIDs []string) ([]*model.GroupMember, *model.AppError)
        + NotifySelfHostedSignupProgress(progress string, userId string) 
        + BulkImport(c request.CTX, jsonlReader io.Reader, attachmentsReader *zip.Reader, dryRun bool, workers int) (*model.AppError, int)
        + BulkImportWithPath(c request.CTX, jsonlReader io.Reader, attachmentsReader *zip.Reader, dryRun bool, workers int, importPath string) (*model.AppError, int)
        + ListImports() ([]string, *model.AppError)
        + DoPostActionWithCookie(c request.CTX, postID string, actionId string, userID string, selectedOption string, cookie *model.PostActionCookie) (string, *model.AppError)
        + DoActionRequest(c request.CTX, rawURL string, body []byte) (*http.Response, *model.AppError)
        + DoLocalRequest(c request.CTX, rawURL string, body []byte) (*http.Response, *model.AppError)
        + OpenInteractiveDialog(request model.OpenDialogRequest) *model.AppError
        + SubmitInteractiveDialog(c request.CTX, request model.SubmitDialogRequest) (*model.SubmitDialogResponse, *model.AppError)
        + SendIPFiltersChangedEmail(c request.CTX, userID string) error
        + GetJob(c request.CTX, id string) (*model.Job, *model.AppError)
        + GetJobsByTypePage(c request.CTX, jobType string, page int, perPage int) ([]*model.Job, *model.AppError)
        + GetJobsByType(c request.CTX, jobType string, offset int, limit int) ([]*model.Job, *model.AppError)
        + GetJobsByTypesPage(c request.CTX, jobType []string, page int, perPage int) ([]*model.Job, *model.AppError)
        + GetJobsByTypes(c request.CTX, jobTypes []string, offset int, limit int) ([]*model.Job, *model.AppError)
        + CreateJob(c request.CTX, job *model.Job) (*model.Job, *model.AppError)
        + CancelJob(c request.CTX, jobId string) *model.AppError
        + SessionHasPermissionToCreateJob(session model.Session, job *model.Job) (bool, *model.Permission)
        + SessionHasPermissionToReadJob(session model.Session, jobType string) (bool, *model.Permission)
        + SyncLdap(c request.CTX, includeRemovedMembers bool) 
        + TestLdap(rctx request.CTX) *model.AppError
        + GetLdapGroup(rctx request.CTX, ldapGroupID string) (*model.Group, *model.AppError)
        + GetAllLdapGroupsPage(rctx request.CTX, page int, perPage int, opts model.LdapGroupSearchOpts) ([]*model.Group, int, *model.AppError)
        + SwitchEmailToLdap(c request.CTX, email string, password string, code string, ldapLoginId string, ldapPassword string) (string, *model.AppError)
        + SwitchLdapToEmail(c request.CTX, ldapPassword string, code string, email string, newPassword string) (string, *model.AppError)
        + MigrateIdLDAP(c request.CTX, toAttribute string) *model.AppError
        + AddLdapPublicCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddLdapPrivateCertificate(fileData *multipart.FileHeader) *model.AppError
        + RemoveLdapPublicCertificate() *model.AppError
        + RemoveLdapPrivateCertificate() *model.AppError
        + GetUserLimits() (*model.UserLimits, *model.AppError)
        + CheckForClientSideCert(r *http.Request) (string, string, string)
        + AuthenticateUserForLogin(c request.CTX, id string, loginId string, password string, mfaToken string, cwsToken string, ldapOnly bool) (*model.User, *model.AppError)
        + GetUserForLogin(c request.CTX, id string, loginId string) (*model.User, *model.AppError)
        + DoLogin(c request.CTX, w http.ResponseWriter, r *http.Request, user *model.User, deviceID string, isMobile bool, isOAuthUser bool, isSaml bool) (*model.Session, *model.AppError)
        + AttachCloudSessionCookie(c request.CTX, w http.ResponseWriter, r *http.Request) 
        + AttachSessionCookies(c request.CTX, w http.ResponseWriter, r *http.Request) 
        + DoAdvancedPermissionsMigration() 
        + SetPhase2PermissionsMigrationStatus(isComplete bool) error
        + DoEmojisPermissionsMigration() 
        + DoGuestRolesCreationMigration() 
        + DoSystemConsoleRolesCreationMigration() 
        + DoAppMigrations() 
        + SendNotifications(c request.CTX, post *model.Post, team *model.Team, channel *model.Channel, sender *model.User, parentPostList *model.PostList, setOnline bool) ([]string, error)
        + RemoveNotifications(c request.CTX, post *model.Post, channel *model.Channel) error
        + FilterUsersByVisible(c request.CTX, viewer *model.User, otherUsers []*model.User) ([]*model.User, *model.AppError)
        + GetNotificationNameFormat(user *model.User) string
        + GetMessageForNotification(post *model.Post, teamName string, siteUrl string, translateFunc i18n.TranslateFunc) string
        + UpdateMobileAppBadge(userID string) 
        + SendAckToPushProxy(ack *model.PushNotificationAck) error
        + ShouldSendPushNotification(user *model.User, channelNotifyProps model.StringMap, wasMentioned bool, status *model.Status, post *model.Post, isGM bool) bool
        + BuildPushNotificationMessage(c request.CTX, contentsConfig string, post *model.Post, user *model.User, channel *model.Channel, channelName string, senderName string, explicitMention bool, channelWideMention bool, replyToThreadType string) (*model.PushNotification, *model.AppError)
        + SendTestPushNotification(deviceID string) string
        + SaveAdminNotification(userId string, notifyData *model.NotifyAdminToUpgradeRequest) *model.AppError
        + DoCheckForAdminNotifications(trial bool) *model.AppError
        + SaveAdminNotifyData(data *model.NotifyAdminData) (*model.NotifyAdminData, *model.AppError)
        + SendNotifyAdminPosts(c request.CTX, workspaceName string, currentSKU string, trial bool) *model.AppError
        + UserAlreadyNotifiedOnRequiredFeature(user string, feature model.MattermostFeature) bool
        + CanNotifyAdmin(trial bool) bool
        + FinishSendAdminNotifyPost(trial bool, now int64, pluginBasedData <font color=blue>map</font>[string][]*model.NotifyAdminData) 
        + CreateOAuthApp(app *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + GetOAuthApp(appID string) (*model.OAuthApp, *model.AppError)
        + UpdateOAuthApp(oldApp *model.OAuthApp, updatedApp *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + DeleteOAuthApp(appID string) *model.AppError
        + GetOAuthApps(page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + GetOAuthAppsByCreator(userID string, page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + GetOAuthImplicitRedirect(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + GetOAuthCodeRedirect(userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + AllowOAuthAppAccessToUser(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + GetOAuthAccessTokenForImplicitFlow(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (*model.Session, *model.AppError)
        + GetOAuthAccessTokenForCodeFlow(c request.CTX, clientId string, grantType string, redirectURI string, code string, secret string, refreshToken string) (*model.AccessResponse, *model.AppError)
        + GetOAuthLoginEndpoint(c request.CTX, w http.ResponseWriter, r *http.Request, service string, teamID string, action string, redirectTo string, loginHint string, isMobile bool, desktopToken string) (string, *model.AppError)
        + GetOAuthSignupEndpoint(c request.CTX, w http.ResponseWriter, r *http.Request, service string, teamID string, desktopToken string) (string, *model.AppError)
        + GetAuthorizedAppsForUser(userID string, page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + DeauthorizeOAuthAppForUser(c request.CTX, userID string, appID string) *model.AppError
        + RegenerateOAuthAppSecret(app *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + RevokeAccessToken(c request.CTX, token string) *model.AppError
        + CompleteOAuth(c request.CTX, service string, body io.ReadCloser, teamID string, props <font color=blue>map</font>[string]string, tokenUser *model.User) (*model.User, *model.AppError)
        + LoginByOAuth(c request.CTX, service string, userData io.Reader, teamID string, tokenUser *model.User) (*model.User, *model.AppError)
        + CompleteSwitchWithOAuth(c request.CTX, service string, userData io.Reader, email string, tokenUser *model.User) (*model.User, *model.AppError)
        + CreateOAuthStateToken(extra string) (*model.Token, *model.AppError)
        + GetOAuthStateToken(token string) (*model.Token, *model.AppError)
        + GetAuthorizationCode(c request.CTX, w http.ResponseWriter, r *http.Request, service string, props <font color=blue>map</font>[string]string, loginHint string) (string, *model.AppError)
        + AuthorizeOAuthUser(c request.CTX, w http.ResponseWriter, r *http.Request, service string, code string, state string, redirectURI string) (io.ReadCloser, string, <font color=blue>map</font>[string]string, *model.User, *model.AppError)
        + SwitchEmailToOAuth(c request.CTX, w http.ResponseWriter, r *http.Request, email string, password string, code string, service string) (string, *model.AppError)
        + SwitchOAuthToEmail(c request.CTX, email string, password string, requesterId string) (string, *model.AppError)
        + CompleteOnboarding(c request.CTX, request *model.CompleteOnboardingRequest) *model.AppError
        + GetOnboarding() (*model.System, *model.AppError)
        + GetOpenGraphMetadata(requestURL string) ([]byte, error)
        + ResetPermissionsSystem() *model.AppError
        + ExportPermissions(w io.Writer) error
        + ImportPermissions(jsonl io.Reader) error
        + DoPermissionsMigrations() error
        + GetPluginsEnvironment() *plugin.Environment
        + NewPluginAPI(c request.CTX, manifest *model.Manifest) plugin.API
        + InitPlugins(c request.CTX, pluginDir string, webappPluginDir string) 
        + SyncPlugins() *model.AppError
        + GetActivePluginManifests() ([]*model.Manifest, *model.AppError)
        + EnablePlugin(id string) *model.AppError
        + DisablePlugin(id string) *model.AppError
        + GetPlugins() (*model.PluginsResponse, *model.AppError)
        + GetMarketplacePlugins(filter *model.MarketplacePluginFilter) ([]*model.MarketplacePlugin, *model.AppError)
        + IsPluginActive(pluginName string) (bool, error)
        + RegisterPluginCommand(pluginID string, command *model.Command) error
        + UnregisterPluginCommand(pluginID string, teamID string, trigger string) 
        + CommandsForTeam(teamID string) []*model.Command
        + InstallPlugin(pluginFile io.ReadSeeker, replace bool) (*model.Manifest, *model.AppError)
        + SetPluginKey(pluginID string, key string, value []byte) *model.AppError
        + SetPluginKeyWithExpiry(pluginID string, key string, value []byte, expireInSeconds int64) *model.AppError
        + CompareAndSetPluginKey(pluginID string, key string, oldValue []byte, newValue []byte) (bool, *model.AppError)
        + SetPluginKeyWithOptions(pluginID string, key string, value []byte, options model.PluginKVSetOptions) (bool, *model.AppError)
        + CompareAndDeletePluginKey(pluginID string, key string, oldValue []byte) (bool, *model.AppError)
        + GetPluginKey(pluginID string, key string) ([]byte, *model.AppError)
        + DeletePluginKey(pluginID string, key string) *model.AppError
        + DeleteAllKeysForPlugin(pluginID string) *model.AppError
        + DeleteAllExpiredPluginKeys() *model.AppError
        + ListPluginKeys(pluginID string, page int, perPage int) ([]string, *model.AppError)
        + ServeInterPluginRequest(w http.ResponseWriter, r *http.Request, sourcePluginId string, destinationPluginId string) 
        + GetPublicKey(name string) ([]byte, *model.AppError)
        + AddPublicKey(name string, key io.Reader) *model.AppError
        + DeletePublicKey(name string) *model.AppError
        + VerifyPlugin(plugin io.ReadSeeker, signature io.ReadSeeker) *model.AppError
        + GetPluginStatus(id string) (*model.PluginStatus, *model.AppError)
        + GetPluginStatuses() (model.PluginStatuses, *model.AppError)
        + GetClusterPluginStatuses() (model.PluginStatuses, *model.AppError)
        + CreatePostAsUser(c request.CTX, post *model.Post, currentSessionId string, setOnline bool) (*model.Post, *model.AppError)
        + CreatePostMissingChannel(c request.CTX, post *model.Post, triggerWebhooks bool, setOnline bool) (*model.Post, *model.AppError)
        + CreatePost(c request.CTX, post *model.Post, channel *model.Channel, triggerWebhooks bool, setOnline bool) (*model.Post, *model.AppError)
        + FillInPostProps(c request.CTX, post *model.Post, channel *model.Channel) *model.AppError
        + SendEphemeralPost(c request.CTX, userID string, post *model.Post) *model.Post
        + UpdateEphemeralPost(c request.CTX, userID string, post *model.Post) *model.Post
        + DeleteEphemeralPost(userID string, postID string) 
        + UpdatePost(c request.CTX, receivedUpdatedPost *model.Post, safeUpdate bool) (*model.Post, *model.AppError)
        + PatchPost(c request.CTX, postID string, patch *model.PostPatch) (*model.Post, *model.AppError)
        + GetPostsPage(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPosts(channelID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetPostsEtag(channelID string, collapsedThreads bool) string
        + GetPostsSince(options model.GetPostsSinceOptions) (*model.PostList, *model.AppError)
        + GetSinglePost(postID string, includeDeleted bool) (*model.Post, *model.AppError)
        + GetPostThread(postID string, opts model.GetPostsOptions, userID string) (*model.PostList, *model.AppError)
        + GetFlaggedPosts(userID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetFlaggedPostsForTeam(userID string, teamID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetFlaggedPostsForChannel(userID string, channelID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetPermalinkPost(c request.CTX, postID string, userID string) (*model.PostList, *model.AppError)
        + GetPostsBeforePost(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsAfterPost(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsAroundPost(before bool, options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostAfterTime(channelID string, time int64, collapsedThreads bool) (*model.Post, *model.AppError)
        + GetPostIdAfterTime(channelID string, time int64, collapsedThreads bool) (string, *model.AppError)
        + GetPostIdBeforeTime(channelID string, time int64, collapsedThreads bool) (string, *model.AppError)
        + GetNextPostIdFromPostList(postList *model.PostList, collapsedThreads bool) string
        + GetPrevPostIdFromPostList(postList *model.PostList, collapsedThreads bool) string
        + AddCursorIdsForPostList(originalList *model.PostList, afterPost string, beforePost string, since int64, page int, perPage int, collapsedThreads bool) 
        + GetPostsForChannelAroundLastUnread(c request.CTX, channelID string, userID string, limitBefore int, limitAfter int, skipFetchThreads bool, collapsedThreads bool, collapsedThreadsExtended bool) (*model.PostList, *model.AppError)
        + DeletePost(c request.CTX, postID string, deleteByID string) (*model.Post, *model.AppError)
        + GetLastAccessiblePostTime() (int64, *model.AppError)
        + ComputeLastAccessiblePostTime() error
        + SearchPostsInTeam(teamID string, paramsList []*model.SearchParams) (*model.PostList, *model.AppError)
        + SearchPostsForUser(c request.CTX, terms string, userID string, teamID string, isOrSearch bool, includeDeletedChannels bool, timeZoneOffset int, page int, perPage int) (*model.PostSearchResults, *model.AppError)
        + GetFileInfosForPostWithMigration(rctx request.CTX, postID string, includeDeleted bool) ([]*model.FileInfo, *model.AppError)
        + GetFileInfosForPost(rctx request.CTX, postID string, fromMaster bool, includeDeleted bool) ([]*model.FileInfo, int64, *model.AppError)
        + PostWithProxyAddedToImageURLs(post *model.Post) *model.Post
        + PostWithProxyRemovedFromImageURLs(post *model.Post) *model.Post
        + PostPatchWithProxyRemovedFromImageURLs(patch *model.PostPatch) *model.PostPatch
        + ImageProxyAdder() <font color=blue>func</font>(string) string
        + ImageProxyRemover() <font color=blue>func</font>(string) string
        + MaxPostSize() int
        + GetThreadMembershipsForUser(userID string, teamID string) ([]*model.ThreadMembership, error)
        + GetPostIfAuthorized(c request.CTX, postID string, session *model.Session, includeDeleted bool) (*model.Post, *model.AppError)
        + GetPostsByIds(postIDs []string) ([]*model.Post, int64, *model.AppError)
        + GetEditHistoryForPost(postID string) ([]*model.Post, *model.AppError)
        + SetPostReminder(postID string, userID string, targetTime int64) *model.AppError
        + CheckPostReminders(rctx request.CTX) 
        + GetPostInfo(c request.CTX, postID string) (*model.PostInfo, *model.AppError)
        + ValidateMoveOrCopy(c request.CTX, wpl *model.WranglerPostList, originalChannel *model.Channel, targetChannel *model.Channel, user *model.User) error
        + CopyWranglerPostlist(c request.CTX, wpl *model.WranglerPostList, targetChannel *model.Channel) (*model.Post, *model.AppError)
        + MoveThread(c request.CTX, postID string, sourceChannelID string, channelID string, user *model.User) *model.AppError
        + SaveAcknowledgementForPost(c request.CTX, postID string, userID string) (*model.PostAcknowledgement, *model.AppError)
        + DeleteAcknowledgementForPost(c request.CTX, postID string, userID string) *model.AppError
        + GetAcknowledgementsForPost(postID string) ([]*model.PostAcknowledgement, *model.AppError)
        + GetAcknowledgementsForPostList(postList *model.PostList) (<font color=blue>map</font>[string][]*model.PostAcknowledgement, *model.AppError)
        + PreparePostListForClient(c request.CTX, originalList *model.PostList) *model.PostList
        + OverrideIconURLIfEmoji(c request.CTX, post *model.Post) 
        + PreparePostForClient(c request.CTX, originalPost *model.Post, isNewPost bool, isEditPost bool, includePriority bool) *model.Post
        + PreparePostForClientWithEmbedsAndImages(c request.CTX, originalPost *model.Post, isNewPost bool, isEditPost bool, includePriority bool) *model.Post
        + SanitizePostMetadataForUser(c request.CTX, post *model.Post, userID string) (*model.Post, *model.AppError)
        + SanitizePostListMetadataForUser(c request.CTX, postList *model.PostList, userID string) (*model.PostList, *model.AppError)
        + ResolvePersistentNotification(c request.CTX, post *model.Post, loggedInUserID string) *model.AppError
        + DeletePersistentNotification(c request.CTX, post *model.Post) *model.AppError
        + SendPersistentNotifications() error
        + IsPersistentNotificationsEnabled() bool
        + GetPriorityForPost(postId string) (*model.PostPriority, *model.AppError)
        + GetPriorityForPostList(list *model.PostList) (<font color=blue>map</font>[string]*model.PostPriority, *model.AppError)
        + IsPostPriorityEnabled() bool
        + GetPreferencesForUser(c request.CTX, userID string) (model.Preferences, *model.AppError)
        + GetPreferenceByCategoryForUser(c request.CTX, userID string, category string) (model.Preferences, *model.AppError)
        + GetPreferenceByCategoryAndNameForUser(c request.CTX, userID string, category string, preferenceName string) (*model.Preference, *model.AppError)
        + UpdatePreferences(c request.CTX, userID string, preferences model.Preferences) *model.AppError
        + DeletePreferences(c request.CTX, userID string, preferences model.Preferences) *model.AppError
        + GetProductNotices(c request.CTX, userID string, teamID string, client model.NoticeClientType, clientVersion string, locale string) (model.NoticeMessages, *model.AppError)
        + UpdateViewedProductNotices(userID string, noticeIds []string) *model.AppError
        + UpdateViewedProductNoticesForNewUser(userID string) 
        + UpdateProductNotices() *model.AppError
        + SaveReactionForPost(c request.CTX, reaction *model.Reaction) (*model.Reaction, *model.AppError)
        + GetReactionsForPost(postID string) ([]*model.Reaction, *model.AppError)
        + GetBulkReactionsForPosts(postIDs []string) (<font color=blue>map</font>[string][]*model.Reaction, *model.AppError)
        + DeleteReactionForPost(c request.CTX, reaction *model.Reaction) *model.AppError
        + RegisterPluginForSharedChannels(opts model.RegisterPluginOpts) (string, error)
        + UnregisterPluginForSharedChannels(pluginID string) error
        + AddRemoteCluster(rc *model.RemoteCluster) (*model.RemoteCluster, *model.AppError)
        + UpdateRemoteCluster(rc *model.RemoteCluster) (*model.RemoteCluster, *model.AppError)
        + DeleteRemoteCluster(remoteClusterId string) (bool, *model.AppError)
        + GetRemoteCluster(remoteClusterId string) (*model.RemoteCluster, *model.AppError)
        + GetAllRemoteClusters(filter model.RemoteClusterQueryFilter) ([]*model.RemoteCluster, *model.AppError)
        + UpdateRemoteClusterTopics(remoteClusterId string, topics string) (*model.RemoteCluster, *model.AppError)
        + SetRemoteClusterLastPingAt(remoteClusterId string) *model.AppError
        + GetRemoteClusterService() (remotecluster.RemoteClusterServiceIFace, *model.AppError)
        + SaveReportChunk(format string, prefix string, count int, reportData []model.ReportableObject) *model.AppError
        + CompileReportChunks(format string, prefix string, numberOfChunks int, headers []string) *model.AppError
        + SendReportToUser(rctx request.CTX, job *model.Job, format string) *model.AppError
        + CleanupReportChunks(format string, prefix string, numberOfChunks int) *model.AppError
        + GetUsersForReporting(filter *model.UserReportOptions) ([]*model.UserReport, *model.AppError)
        + GetUserCountForReport(filter *model.UserReportOptions) (*int64, *model.AppError)
        + StartUsersBatchExport(rctx request.CTX, dateRange string, startAt int64, endAt int64) *model.AppError
        + GetRole(id string) (*model.Role, *model.AppError)
        + GetAllRoles() ([]*model.Role, *model.AppError)
        + GetRoleByName(ctx context.Context, name string) (*model.Role, *model.AppError)
        + GetRolesByNames(names []string) ([]*model.Role, *model.AppError)
        + PatchRole(role *model.Role, patch *model.RolePatch) (*model.Role, *model.AppError)
        + CreateRole(role *model.Role) (*model.Role, *model.AppError)
        + UpdateRole(role *model.Role) (*model.Role, *model.AppError)
        + CheckRolesExist(roleNames []string) *model.AppError
        + GetSamlMetadata(c request.CTX) (string, *model.AppError)
        + AddSamlPublicCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddSamlPrivateCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddSamlIdpCertificate(fileData *multipart.FileHeader) *model.AppError
        + RemoveSamlPublicCertificate() *model.AppError
        + RemoveSamlPrivateCertificate() *model.AppError
        + RemoveSamlIdpCertificate() *model.AppError
        + GetSamlCertificateStatus() *model.SamlCertificateStatus
        + GetSamlMetadataFromIdp(idpMetadataURL string) (*model.SamlMetadataResponse, *model.AppError)
        + FetchSamlMetadataFromIdp(url string) ([]byte, *model.AppError)
        + BuildSamlMetadataObject(idpMetadata []byte) (*model.SamlMetadataResponse, *model.AppError)
        + SetSamlIdpCertificateFromMetadata(data []byte) *model.AppError
        + ResetSamlAuthDataToEmail(includeDeleted bool, dryRun bool, userIDs []string) (int, *model.AppError)
        + CreateSamlRelayToken(extra string) (*model.Token, *model.AppError)
        + GetSamlEmailToken(token string) (*model.Token, *model.AppError)
        + GetScheme(id string) (*model.Scheme, *model.AppError)
        + GetSchemeByName(name string) (*model.Scheme, *model.AppError)
        + GetSchemesPage(scope string, page int, perPage int) ([]*model.Scheme, *model.AppError)
        + GetSchemes(scope string, offset int, limit int) ([]*model.Scheme, *model.AppError)
        + CreateScheme(scheme *model.Scheme) (*model.Scheme, *model.AppError)
        + PatchScheme(scheme *model.Scheme, patch *model.SchemePatch) (*model.Scheme, *model.AppError)
        + UpdateScheme(scheme *model.Scheme) (*model.Scheme, *model.AppError)
        + DeleteScheme(schemeId string) (*model.Scheme, *model.AppError)
        + GetTeamsForSchemePage(scheme *model.Scheme, page int, perPage int) ([]*model.Team, *model.AppError)
        + GetTeamsForScheme(scheme *model.Scheme, offset int, limit int) ([]*model.Team, *model.AppError)
        + GetChannelsForSchemePage(scheme *model.Scheme, page int, perPage int) (model.ChannelList, *model.AppError)
        + GetChannelsForScheme(scheme *model.Scheme, offset int, limit int) (model.ChannelList, *model.AppError)
        + IsPhase2MigrationCompleted() *model.AppError
        + SchemesIterator(scope string, batchSize int) <font color=blue>func</font>() []*model.Scheme
        + TestElasticsearch(rctx request.CTX, cfg *model.Config) *model.AppError
        + SetSearchEngine(se *searchengine.Broker) 
        + PurgeElasticsearchIndexes(c request.CTX) *model.AppError
        + PurgeBleveIndexes(c request.CTX) *model.AppError
        + ActiveSearchBackend() string
        + OriginChecker() <font color=blue>func</font>(*http.Request) bool
        + GetAppliedSchemaMigrations() ([]model.AppliedMigration, *model.AppError)
        + CreateSession(c request.CTX, session *model.Session) (*model.Session, *model.AppError)
        + GetCloudSession(token string) (*model.Session, *model.AppError)
        + GetRemoteClusterSession(token string, remoteId string) (*model.Session, *model.AppError)
        + GetSession(token string) (*model.Session, *model.AppError)
        + GetSessions(c request.CTX, userID string) ([]*model.Session, *model.AppError)
        + RevokeAllSessions(c request.CTX, userID string) *model.AppError
        + AddSessionToCache(session *model.Session) 
        + RevokeSessionsFromAllUsers() *model.AppError
        + ReturnSessionToPool(session *model.Session) 
        + ClearSessionCacheForUser(userID string) 
        + ClearSessionCacheForAllUsers() 
        + ClearSessionCacheForUserSkipClusterSend(userID string) 
        + ClearSessionCacheForAllUsersSkipClusterSend() 
        + RevokeSessionsForDeviceId(c request.CTX, userID string, deviceID string, currentSessionId string) *model.AppError
        + GetSessionById(c request.CTX, sessionID string) (*model.Session, *model.AppError)
        + RevokeSessionById(c request.CTX, sessionID string) *model.AppError
        + RevokeSession(c request.CTX, session *model.Session) *model.AppError
        + AttachDeviceId(sessionID string, deviceID string, expiresAt int64) *model.AppError
        + ExtendSessionExpiryIfNeeded(rctx request.CTX, session *model.Session) bool
        + GetSessionLengthInMillis(session *model.Session) int64
        + SetSessionExpireInHours(session *model.Session, hours int) 
        + CreateUserAccessToken(token *model.UserAccessToken) (*model.UserAccessToken, *model.AppError)
        + RevokeUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + DisableUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + EnableUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + GetUserAccessTokens(page int, perPage int) ([]*model.UserAccessToken, *model.AppError)
        + GetUserAccessTokensForUser(userID string, page int, perPage int) ([]*model.UserAccessToken, *model.AppError)
        + GetUserAccessToken(tokenID string, sanitize bool) (*model.UserAccessToken, *model.AppError)
        + SearchUserAccessTokens(term string) ([]*model.UserAccessToken, *model.AppError)
        + CheckCanInviteToSharedChannel(channelId string) error
        + ShareChannel(c request.CTX, sc *model.SharedChannel) (*model.SharedChannel, error)
        + GetSharedChannel(channelID string) (*model.SharedChannel, error)
        + HasSharedChannel(channelID string) (bool, error)
        + GetSharedChannels(page int, perPage int, opts model.SharedChannelFilterOpts) ([]*model.SharedChannel, *model.AppError)
        + GetSharedChannelsCount(opts model.SharedChannelFilterOpts) (int64, error)
        + UpdateSharedChannel(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UnshareChannel(channelID string) (bool, error)
        + InviteRemoteToChannel(channelID string, remoteID string, userID string, shareIfNotShared bool) error
        + UninviteRemoteFromChannel(channelID string, remoteID string) error
        + SaveSharedChannelRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + GetSharedChannelRemote(id string) (*model.SharedChannelRemote, error)
        + GetSharedChannelRemoteByIds(channelID string, remoteID string) (*model.SharedChannelRemote, error)
        + GetSharedChannelRemotes(opts model.SharedChannelRemoteFilterOpts) ([]*model.SharedChannelRemote, error)
        + HasRemote(channelID string, remoteID string) (bool, error)
        + GetRemoteClusterForUser(remoteID string, userID string) (*model.RemoteCluster, *model.AppError)
        + UpdateSharedChannelRemoteCursor(id string, cursor model.GetPostsSinceForSyncCursor) error
        + DeleteSharedChannelRemote(id string) (bool, error)
        + GetSharedChannelRemotesStatus(channelID string) ([]*model.SharedChannelRemoteStatus, error)
        + NotifySharedChannelUserUpdate(user *model.User) 
        + UpdateSharedChannelCursor(channelID string, remoteID string, cursor model.GetPostsSinceForSyncCursor) error
        + SyncSharedChannel(channelID string) error
        + OnSharedChannelsSyncMsg(msg *model.SyncMsg, rc *model.RemoteCluster) (model.SyncResponse, error)
        + OnSharedChannelsPing(rc *model.RemoteCluster) bool
        + OnSharedChannelsAttachmentSyncMsg(fi *model.FileInfo, post *model.Post, rc *model.RemoteCluster) error
        + OnSharedChannelsProfileImageSyncMsg(user *model.User, rc *model.RemoteCluster) error
        + SlackImport(c request.CTX, fileData multipart.File, fileSize int64, teamID string) (*model.AppError, *bytes.Buffer)
        + ProcessSlackText(text string) string
        + ProcessSlackAttachments(attachments []*model.SlackAttachment) []*model.SlackAttachment
        + GetUserStatusesByIds(userIDs []string) ([]*model.Status, *model.AppError)
        + SetStatusLastActivityAt(userID string, activityAt int64) 
        + SetStatusOnline(userID string, manual bool) 
        + SetStatusOffline(userID string, manual bool) 
        + SetStatusAwayIfNeeded(userID string, manual bool) 
        + SetStatusDoNotDisturbTimed(userId string, endtime int64) 
        + SetStatusDoNotDisturb(userID string) 
        + SetStatusOutOfOffice(userID string) 
        + GetStatusFromCache(userID string) *model.Status
        + GetStatus(userID string) (*model.Status, *model.AppError)
        + UpdateDNDStatusOfUsers() 
        + SetCustomStatus(c request.CTX, userID string, cs *model.CustomStatus) *model.AppError
        + RemoveCustomStatus(c request.CTX, userID string) *model.AppError
        + GetCustomStatus(userID string) (*model.CustomStatus, *model.AppError)
        + RemoveRecentCustomStatus(c request.CTX, userID string, status *model.CustomStatus) *model.AppError
        + GenerateSupportPacket(c request.CTX) []model.FileData
        + CreateDefaultMemberships(c request.CTX, params model.CreateDefaultMembershipParams) error
        + DeleteGroupConstrainedMemberships(c request.CTX) error
        + SyncSyncableRoles(syncableID string, syncableType model.GroupSyncableType) *model.AppError
        + SyncRolesAndMembership(c request.CTX, syncableID string, syncableType model.GroupSyncableType, includeRemovedMembers bool) 
        + AdjustTeamsFromProductLimits(teamLimits *model.TeamsLimits) *model.AppError
        + CreateTeam(c request.CTX, team *model.Team) (*model.Team, *model.AppError)
        + CreateTeamWithUser(c request.CTX, team *model.Team, userID string) (*model.Team, *model.AppError)
        + UpdateTeam(team *model.Team) (*model.Team, *model.AppError)
        + RenameTeam(team *model.Team, newTeamName string, newDisplayName string) (*model.Team, *model.AppError)
        + UpdateTeamScheme(team *model.Team) (*model.Team, *model.AppError)
        + UpdateTeamPrivacy(teamID string, teamType string, allowOpenInvite bool) *model.AppError
        + PatchTeam(teamID string, patch *model.TeamPatch) (*model.Team, *model.AppError)
        + RegenerateTeamInviteId(teamID string) (*model.Team, *model.AppError)
        + GetSchemeRolesForTeam(teamID string) (string, string, string, *model.AppError)
        + UpdateTeamMemberRoles(c request.CTX, teamID string, userID string, newRoles string) (*model.TeamMember, *model.AppError)
        + UpdateTeamMemberSchemeRoles(c request.CTX, teamID string, userID string, isSchemeGuest bool, isSchemeUser bool, isSchemeAdmin bool) (*model.TeamMember, *model.AppError)
        + AddUserToTeam(c request.CTX, teamID string, userID string, userRequestorId string) (*model.Team, *model.TeamMember, *model.AppError)
        + AddUserToTeamByTeamId(c request.CTX, teamID string, user *model.User) *model.AppError
        + AddUserToTeamByToken(c request.CTX, userID string, tokenID string) (*model.Team, *model.TeamMember, *model.AppError)
        + AddUserToTeamByInviteId(c request.CTX, inviteId string, userID string) (*model.Team, *model.TeamMember, *model.AppError)
        + JoinUserToTeam(c request.CTX, team *model.Team, user *model.User, userRequestorId string) (*model.TeamMember, *model.AppError)
        + GetTeam(teamID string) (*model.Team, *model.AppError)
        + GetTeams(teamIDs []string) ([]*model.Team, *model.AppError)
        + GetTeamByName(name string) (*model.Team, *model.AppError)
        + GetTeamByInviteId(inviteId string) (*model.Team, *model.AppError)
        + GetAllTeams() ([]*model.Team, *model.AppError)
        + GetAllTeamsPage(offset int, limit int, opts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + GetAllTeamsPageWithCount(offset int, limit int, opts *model.TeamSearch) (*model.TeamsWithCount, *model.AppError)
        + GetAllPrivateTeams() ([]*model.Team, *model.AppError)
        + GetAllPublicTeams() ([]*model.Team, *model.AppError)
        + SearchAllTeams(searchOpts *model.TeamSearch) ([]*model.Team, int64, *model.AppError)
        + SearchPublicTeams(searchOpts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + SearchPrivateTeams(searchOpts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + GetTeamsForUser(userID string) ([]*model.Team, *model.AppError)
        + GetTeamMember(c request.CTX, teamID string, userID string) (*model.TeamMember, *model.AppError)
        + GetTeamMembersForUser(c request.CTX, userID string, excludeTeamID string, includeDeleted bool) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembersForUserWithPagination(userID string, page int, perPage int) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembers(teamID string, offset int, limit int, teamMembersGetOptions *model.TeamMembersGetOptions) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembersByIds(teamID string, userIDs []string, restrictions *model.ViewUsersRestrictions) ([]*model.TeamMember, *model.AppError)
        + GetCommonTeamIDsForTwoUsers(userID string, otherUserID string) ([]string, *model.AppError)
        + AddTeamMember(c request.CTX, teamID string, userID string) (*model.TeamMember, *model.AppError)
        + AddTeamMembers(c request.CTX, teamID string, userIDs []string, userRequestorId string, graceful bool) ([]*model.TeamMemberWithError, *model.AppError)
        + AddTeamMemberByToken(c request.CTX, userID string, tokenID string) (*model.TeamMember, *model.AppError)
        + AddTeamMemberByInviteId(c request.CTX, inviteId string, userID string) (*model.TeamMember, *model.AppError)
        + GetTeamUnread(teamID string, userID string) (*model.TeamUnread, *model.AppError)
        + RemoveUserFromTeam(c request.CTX, teamID string, userID string, requestorId string) *model.AppError
        + LeaveTeam(c request.CTX, team *model.Team, user *model.User, requestorId string) *model.AppError
        + InviteNewUsersToTeamGracefully(memberInvite *model.MemberInvite, teamID string, senderId string, reminderInterval string) ([]*model.EmailInviteWithError, *model.AppError)
        + InviteGuestsToChannelsGracefully(teamID string, guestsInvite *model.GuestsInvite, senderId string) ([]*model.EmailInviteWithError, *model.AppError)
        + InviteNewUsersToTeam(emailList []string, teamID string, senderId string) *model.AppError
        + InviteGuestsToChannels(teamID string, guestsInvite *model.GuestsInvite, senderId string) *model.AppError
        + FindTeamByName(name string) bool
        + GetTeamsUnreadForUser(excludeTeamId string, userID string, includeCollapsedThreads bool) ([]*model.TeamUnread, *model.AppError)
        + PermanentDeleteTeamId(c request.CTX, teamID string) *model.AppError
        + PermanentDeleteTeam(c request.CTX, team *model.Team) *model.AppError
        + SoftDeleteTeam(teamID string) *model.AppError
        + RestoreTeam(teamID string) *model.AppError
        + GetTeamStats(teamID string, restrictions *model.ViewUsersRestrictions) (*model.TeamStats, *model.AppError)
        + GetTeamIdFromQuery(query url.Values) (string, *model.AppError)
        + SanitizeTeam(session model.Session, team *model.Team) *model.Team
        + SanitizeTeams(session model.Session, teams []*model.Team) []*model.Team
        + GetTeamIcon(team *model.Team) ([]byte, *model.AppError)
        + SetTeamIcon(teamID string, imageData *multipart.FileHeader) *model.AppError
        + SetTeamIconFromMultiPartFile(teamID string, file multipart.File) *model.AppError
        + SetTeamIconFromFile(team *model.Team, file io.Reader) *model.AppError
        + RemoveTeamIcon(teamID string) *model.AppError
        + InvalidateAllEmailInvites(c request.CTX) *model.AppError
        + InvalidateAllResendInviteEmailJobs(c request.CTX) *model.AppError
        + ClearTeamMembersCache(teamID string) error
        + CreateTermsOfService(text string, userID string) (*model.TermsOfService, *model.AppError)
        + GetLatestTermsOfService() (*model.TermsOfService, *model.AppError)
        + GetTermsOfService(id string) (*model.TermsOfService, *model.AppError)
        + GetTrueUpProfile() (<font color=blue>map</font>[string]any, error)
        + GetOrCreateTrueUpReviewStatus() (*model.TrueUpReviewStatus, *model.AppError)
        + CreateUploadSession(c request.CTX, us *model.UploadSession) (*model.UploadSession, *model.AppError)
        + GetUploadSession(c request.CTX, uploadId string) (*model.UploadSession, *model.AppError)
        + GetUploadSessionsForUser(userID string) ([]*model.UploadSession, *model.AppError)
        + UploadData(c request.CTX, us *model.UploadSession, rd io.Reader) (*model.FileInfo, *model.AppError)
        + GetPostsUsage() (int64, *model.AppError)
        + GetStorageUsage() (int64, *model.AppError)
        + GetTeamsUsage() (*model.TeamsUsage, *model.AppError)
        + CreateUserWithToken(c request.CTX, user *model.User, token *model.Token) (*model.User, *model.AppError)
        + CreateUserWithInviteId(c request.CTX, user *model.User, inviteId string, redirect string) (*model.User, *model.AppError)
        + CreateUserAsAdmin(c request.CTX, user *model.User, redirect string) (*model.User, *model.AppError)
        + CreateUserFromSignup(c request.CTX, user *model.User, redirect string) (*model.User, *model.AppError)
        + IsUserSignUpAllowed() *model.AppError
        + IsFirstUserAccount() bool
        + CreateUser(c request.CTX, user *model.User) (*model.User, *model.AppError)
        + CreateGuest(c request.CTX, user *model.User) (*model.User, *model.AppError)
        + CreateOAuthUser(c request.CTX, service string, userData io.Reader, teamID string, tokenUser *model.User) (*model.User, *model.AppError)
        + GetUser(userID string) (*model.User, *model.AppError)
        + GetUsers(userIDs []string) ([]*model.User, *model.AppError)
        + GetUserByUsername(username string) (*model.User, *model.AppError)
        + GetUserByEmail(email string) (*model.User, *model.AppError)
        + GetUserByRemoteID(remoteID string) (*model.User, *model.AppError)
        + GetUserByAuth(authData *string, authService string) (*model.User, *model.AppError)
        + GetUsersFromProfiles(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersEtag(restrictionsHash string) string
        + GetUsersInTeam(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersNotInTeam(teamID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersInTeamPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersNotInTeamPage(teamID string, groupConstrained bool, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersInTeamEtag(teamID string, restrictionsHash string) string
        + GetUsersNotInTeamEtag(teamID string, restrictionsHash string) string
        + GetUsersInChannel(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelByStatus(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelByAdmin(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelMap(options *model.UserGetOptions, asAdmin bool) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetUsersInChannelPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersInChannelPageByStatus(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersInChannelPageByAdmin(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersNotInChannel(teamID string, channelID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersNotInChannelMap(teamID string, channelID string, groupConstrained bool, offset int, limit int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetUsersNotInChannelPage(teamID string, channelID string, groupConstrained bool, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersWithoutTeamPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersWithoutTeam(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetTeamGroupUsers(teamID string) ([]*model.User, *model.AppError)
        + GetChannelGroupUsers(channelID string) ([]*model.User, *model.AppError)
        + GetUsersByIds(userIDs []string, options *store.UserGetByIdsOpts) ([]*model.User, *model.AppError)
        + GetUsersByGroupChannelIds(c request.CTX, channelIDs []string, asAdmin bool) (<font color=blue>map</font>[string][]*model.User, *model.AppError)
        + GetUsersByUsernames(usernames []string, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GenerateMfaSecret(userID string) (*model.MfaSecret, *model.AppError)
        + ActivateMfa(userID string, token string) *model.AppError
        + DeactivateMfa(userID string) *model.AppError
        + GetProfileImagePath(user *model.User) (string, *model.AppError)
        + GetProfileImage(user *model.User) ([]byte, bool, *model.AppError)
        + GetDefaultProfileImage(user *model.User) ([]byte, *model.AppError)
        + UpdateDefaultProfileImage(c request.CTX, user *model.User) *model.AppError
        + SetDefaultProfileImage(c request.CTX, user *model.User) *model.AppError
        + SetProfileImage(c request.CTX, userID string, imageData *multipart.FileHeader) *model.AppError
        + SetProfileImageFromMultiPartFile(c request.CTX, userID string, file multipart.File) *model.AppError
        + AdjustImage(file io.Reader) (*bytes.Buffer, *model.AppError)
        + SetProfileImageFromFile(c request.CTX, userID string, file io.Reader) *model.AppError
        + UpdatePasswordAsUser(c request.CTX, userID string, currentPassword string, newPassword string) *model.AppError
        + UpdateActive(c request.CTX, user *model.User, active bool) (*model.User, *model.AppError)
        + DeactivateGuests(c request.CTX) *model.AppError
        + GetSanitizeOptions(asAdmin bool) <font color=blue>map</font>[string]bool
        + SanitizeProfile(user *model.User, asAdmin bool) 
        + UpdateUserAsUser(c request.CTX, user *model.User, asAdmin bool) (*model.User, *model.AppError)
        + CheckProviderAttributes(c request.CTX, user *model.User, patch *model.UserPatch) string
        + PatchUser(c request.CTX, userID string, patch *model.UserPatch, asAdmin bool) (*model.User, *model.AppError)
        + UpdateUserAuth(c request.CTX, userID string, userAuth *model.UserAuth) (*model.UserAuth, *model.AppError)
        + UpdateUser(c request.CTX, user *model.User, sendNotifications bool) (*model.User, *model.AppError)
        + UpdateUserActive(c request.CTX, userID string, active bool) *model.AppError
        + UpdateMfa(c request.CTX, activate bool, userID string, token string) *model.AppError
        + UpdatePasswordByUserIdSendEmail(c request.CTX, userID string, newPassword string, method string) *model.AppError
        + UpdatePassword(rctx request.CTX, user *model.User, newPassword string) *model.AppError
        + UpdatePasswordSendEmail(c request.CTX, user *model.User, newPassword string, method string) *model.AppError
        + UpdateHashedPasswordByUserId(userID string, newHashedPassword string) *model.AppError
        + UpdateHashedPassword(user *model.User, newHashedPassword string) *model.AppError
        + ResetPasswordFromToken(c request.CTX, userSuppliedTokenString string, newPassword string) *model.AppError
        + SendPasswordReset(email string, siteURL string) (bool, *model.AppError)
        + CreatePasswordRecoveryToken(userID string, email string) (*model.Token, *model.AppError)
        + InvalidatePasswordRecoveryTokensForUser(userID string) *model.AppError
        + GetPasswordRecoveryToken(token string) (*model.Token, *model.AppError)
        + GetTokenById(token string) (*model.Token, *model.AppError)
        + DeleteToken(token *model.Token) *model.AppError
        + UpdateUserRoles(c request.CTX, userID string, newRoles string, sendWebSocketEvent bool) (*model.User, *model.AppError)
        + UpdateUserRolesWithUser(c request.CTX, user *model.User, newRoles string, sendWebSocketEvent bool) (*model.User, *model.AppError)
        + PermanentDeleteUser(c request.CTX, user *model.User) *model.AppError
        + PermanentDeleteAllUsers(c request.CTX) *model.AppError
        + SendEmailVerification(user *model.User, newEmail string, redirect string) *model.AppError
        + VerifyEmailFromToken(c request.CTX, userSuppliedTokenString string) *model.AppError
        + GetVerifyEmailToken(token string) (*model.Token, *model.AppError)
        + GetTotalUsersStats(viewRestrictions *model.ViewUsersRestrictions) (*model.UsersStats, *model.AppError)
        + GetFilteredUsersStats(options *model.UserCountOptions) (*model.UsersStats, *model.AppError)
        + VerifyUserEmail(userID string, email string) *model.AppError
        + SearchUsers(rctx request.CTX, props *model.UserSearch, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInChannel(channelID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInChannel(teamID string, channelID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInTeam(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInTeam(notInTeamId string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersWithoutTeam(term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + AutocompleteUsersInChannel(rctx request.CTX, teamID string, channelID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInChannel, *model.AppError)
        + AutocompleteUsersInTeam(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInTeam, *model.AppError)
        + UpdateOAuthUserAttrs(c request.CTX, userData io.Reader, user *model.User, provider einterfaces.OAuthProvider, service string, tokenUser *model.User) *model.AppError
        + RestrictUsersGetByPermissions(c request.CTX, userID string, options *model.UserGetOptions) (*model.UserGetOptions, *model.AppError)
        + FilterNonGroupTeamMembers(userIDs []string, team *model.Team) ([]string, error)
        + FilterNonGroupChannelMembers(userIDs []string, channel *model.Channel) ([]string, error)
        + RestrictUsersSearchByPermissions(c request.CTX, userID string, options *model.UserSearchOptions) (*model.UserSearchOptions, *model.AppError)
        + UserCanSeeOtherUser(c request.CTX, userID string, otherUserId string) (bool, *model.AppError)
        + GetViewUsersRestrictions(c request.CTX, userID string) (*model.ViewUsersRestrictions, *model.AppError)
        + PromoteGuestToUser(c request.CTX, user *model.User, requestorId string) *model.AppError
        + DemoteUserToGuest(c request.CTX, user *model.User) *model.AppError
        + PublishUserTyping(userID string, channelID string, parentId string) *model.AppError
        + GetKnownUsers(userID string) ([]string, *model.AppError)
        + ConvertBotToUser(c request.CTX, bot *model.Bot, userPatch *model.UserPatch, sysadmin bool) (*model.User, *model.AppError)
        + GetThreadsForUser(userID string, teamID string, options model.GetUserThreadsOpts) (*model.Threads, *model.AppError)
        + GetThreadMembershipForUser(userId string, threadId string) (*model.ThreadMembership, *model.AppError)
        + GetThreadForUser(threadMembership *model.ThreadMembership, extended bool) (*model.ThreadResponse, *model.AppError)
        + UpdateThreadsReadForUser(userID string, teamID string) *model.AppError
        + UpdateThreadFollowForUser(userID string, teamID string, threadID string, state bool) *model.AppError
        + UpdateThreadFollowForUserFromChannelAdd(c request.CTX, userID string, teamID string, threadID string) *model.AppError
        + UpdateThreadReadForUserByPost(c request.CTX, currentSessionId string, userID string, teamID string, threadID string, postID string) (*model.ThreadResponse, *model.AppError)
        + UpdateThreadReadForUser(c request.CTX, currentSessionId string, userID string, teamID string, threadID string, timestamp int64) (*model.ThreadResponse, *model.AppError)
        + GetUsersWithInvalidEmails(page int, perPage int) ([]*model.User, *model.AppError)
        + UserIsFirstAdmin(user *model.User) bool
        + GetUserTermsOfService(userID string) (*model.UserTermsOfService, *model.AppError)
        + SaveUserTermsOfService(userID string, termsOfServiceId string, accepted bool) *model.AppError
        + PopulateWebConnConfig(s *model.Session, cfg *platform.WebConnConfig, seqVal string) (*platform.WebConnConfig, error)
        + TotalWebsocketConnections() int
        + GetHubForUserId(userID string) *platform.Hub
        + HubRegister(webConn *platform.WebConn) 
        + HubUnregister(webConn *platform.WebConn) 
        + Publish(message *model.WebSocketEvent) 
        + InvalidateCacheForUser(userID string) 
        + UpdateWebConnUserActivity(session model.Session, activityAt int64) 
        + SessionIsRegistered(session model.Session) bool
        + CheckWebConn(userID string, connectionID string) *platform.CheckConnResult
        + TriggerWebhook(c request.CTX, payload *model.OutgoingWebhookPayload, hook *model.OutgoingWebhook, post *model.Post, channel *model.Channel) 
        + CreateWebhookPost(c request.CTX, userID string, channel *model.Channel, text string, overrideUsername string, overrideIconURL string, overrideIconEmoji string, props model.StringInterface, postType string, postRootId string) (*model.Post, *model.AppError)
        + CreateIncomingWebhookForChannel(creatorId string, channel *model.Channel, hook *model.IncomingWebhook) (*model.IncomingWebhook, *model.AppError)
        + UpdateIncomingWebhook(oldHook *model.IncomingWebhook, updatedHook *model.IncomingWebhook) (*model.IncomingWebhook, *model.AppError)
        + DeleteIncomingWebhook(hookID string) *model.AppError
        + GetIncomingWebhook(hookID string) (*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksForTeamPage(teamID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksForTeamPageByUser(teamID string, userID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksPageByUser(userID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksPage(page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + CreateOutgoingWebhook(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + UpdateOutgoingWebhook(c request.CTX, oldHook *model.OutgoingWebhook, updatedHook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhook(hookID string) (*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksPage(page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksPageByUser(userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForChannelPageByUser(channelID string, userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForTeamPage(teamID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForTeamPageByUser(teamID string, userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + DeleteOutgoingWebhook(hookID string) *model.AppError
        + RegenOutgoingWebhookToken(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + HandleIncomingWebhook(c request.CTX, hookID string, req *model.IncomingWebhookRequest) *model.AppError
        + CreateCommandWebhook(commandID string, args *model.CommandArgs) (*model.CommandWebhook, *model.AppError)
        + HandleCommandWebhook(c request.CTX, hookID string, response *model.CommandResponse) *model.AppError

    }
    interface AppIface  {
        + ExecuteCommand(c request.CTX, args *model.CommandArgs) (*model.CommandResponse, *model.AppError)
        + ListAutocompleteCommands(teamID string, T i18n.TranslateFunc) ([]*model.Command, *model.AppError)
        + CreateCommandPost(c request.CTX, post *model.Post, teamID string, response *model.CommandResponse, skipSlackParsing bool) (*model.Post, *model.AppError)
        + AddChannelMember(c request.CTX, userID string, channel *model.Channel, opts ChannelMemberOpts) (*model.ChannelMember, *model.AppError)
        + AddCursorIdsForPostList(originalList *model.PostList, afterPost string, beforePost string, since int64, page int, perPage int, collapsedThreads bool) 
        + AddPublicKey(name string, key io.Reader) *model.AppError
        + AddUserToChannel(c request.CTX, user *model.User, channel *model.Channel, skipTeamMemberIntegrityCheck bool) (*model.ChannelMember, *model.AppError)
        + ExportFileReader(path string) (filestore.ReadCloseSeeker, *model.AppError)
        + FileReader(path string) (filestore.ReadCloseSeeker, *model.AppError)
        + ChannelMembersMinusGroupMembers(channelID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, int64, *model.AppError)
        + ChannelMembersToAdd(since int64, channelID *string, includeRemovedMembers bool) ([]*model.UserChannelIDPair, *model.AppError)
        + CheckProviderAttributes(c request.CTX, user *model.User, patch *model.UserPatch) string
        + CommandsForTeam(teamID string) []*model.Command
        + ComputeLastAccessibleFileTime() error
        + ComputeLastAccessiblePostTime() error
        + ConvertBotToUser(c request.CTX, bot *model.Bot, userPatch *model.UserPatch, sysadmin bool) (*model.User, *model.AppError)
        + ConvertUserToBot(user *model.User) (*model.Bot, *model.AppError)
        + SendSubscriptionHistoryEvent(userID string) (*model.SubscriptionHistory, error)
        + CreateBot(c request.CTX, bot *model.Bot) (*model.Bot, *model.AppError)
        + CreateChannelScheme(c request.CTX, channel *model.Channel) (*model.Scheme, *model.AppError)
        + CreateDefaultMemberships(c request.CTX, params model.CreateDefaultMembershipParams) error
        + CreateGuest(c request.CTX, user *model.User) (*model.User, *model.AppError)
        + CreateUser(c request.CTX, user *model.User) (*model.User, *model.AppError)
        + MigrateFilenamesToFileInfos(rctx request.CTX, post *model.Post) []*model.FileInfo
        + DefaultChannelNames(c request.CTX) []string
        + DeleteChannelScheme(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + DeleteGroupConstrainedMemberships(c request.CTX) error
        + DeletePersistentNotification(c request.CTX, post *model.Post) *model.AppError
        + DeletePublicKey(name string) *model.AppError
        + DemoteUserToGuest(c request.CTX, user *model.User) *model.AppError
        + DisablePlugin(id string) *model.AppError
        + DoPermissionsMigrations() error
        + EnablePlugin(id string) *model.AppError
        + EnsureBot(rctx request.CTX, pluginID string, bot *model.Bot) (string, error)
        + ProcessSlackAttachments(attachments []*model.SlackAttachment) []*model.SlackAttachment
        + ExtendSessionExpiryIfNeeded(rctx request.CTX, session *model.Session) bool
        + FillInPostProps(c request.CTX, post *model.Post, channel *model.Channel) *model.AppError
        + FilterNonGroupChannelMembers(userIDs []string, channel *model.Channel) ([]string, error)
        + FilterNonGroupTeamMembers(userIDs []string, team *model.Team) ([]string, error)
        + GetAllLdapGroupsPage(rctx request.CTX, page int, perPage int, opts model.LdapGroupSearchOpts) ([]*model.Group, int, *model.AppError)
        + GetBot(botUserId string, includeDeleted bool) (*model.Bot, *model.AppError)
        + GetBots(options *model.BotGetOptions) (model.BotList, *model.AppError)
        + GetChannelGroupUsers(channelID string) ([]*model.User, *model.AppError)
        + GetChannelModerationsForChannel(c request.CTX, channel *model.Channel) ([]*model.ChannelModeration, *model.AppError)
        + GetClusterPluginStatuses() (model.PluginStatuses, *model.AppError)
        + GetConfigFile(name string) ([]byte, error)
        + GetEmojiStaticURL(c request.CTX, emojiName string) (string, *model.AppError)
        + GetEnvironmentConfig(filter <font color=blue>func</font>(reflect.StructField) bool) <font color=blue>map</font>[string]any
        + GetFileInfosForPost(rctx request.CTX, postID string, fromMaster bool, includeDeleted bool) ([]*model.FileInfo, int64, *model.AppError)
        + GetFilteredUsersStats(options *model.UserCountOptions) (*model.UsersStats, *model.AppError)
        + GetGroupsByTeam(teamID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, int, *model.AppError)
        + GetKnownUsers(userID string) ([]string, *model.AppError)
        + GetLastAccessibleFileTime() (int64, *model.AppError)
        + GetLastAccessiblePostTime() (int64, *model.AppError)
        + GetLdapGroup(rctx request.CTX, ldapGroupID string) (*model.Group, *model.AppError)
        + GetMarketplacePlugins(filter *model.MarketplacePluginFilter) ([]*model.MarketplacePlugin, *model.AppError)
        + GetPluginStatus(id string) (*model.PluginStatus, *model.AppError)
        + GetPluginStatuses() (model.PluginStatuses, *model.AppError)
        + GetPluginsEnvironment() *plugin.Environment
        + GetPostsByIds(postIDs []string) ([]*model.Post, int64, *model.AppError)
        + GetPostsUsage() (int64, *model.AppError)
        + GetProductNotices(c request.CTX, userID string, teamID string, client model.NoticeClientType, clientVersion string, locale string) (model.NoticeMessages, *model.AppError)
        + GetProfileImagePath(user *model.User) (string, *model.AppError)
        + GetPublicKey(name string) ([]byte, *model.AppError)
        + GetSanitizedConfig() *model.Config
        + GetSchemeRolesForChannel(c request.CTX, channelID string) (string, string, string, *model.AppError)
        + GetSessionLengthInMillis(session *model.Session) int64
        + GetStorageUsage() (int64, *model.AppError)
        + GetSuggestions(c request.CTX, commandArgs *model.CommandArgs, commands []*model.Command, roleID string) []model.AutocompleteSuggestion
        + GetTeamGroupUsers(teamID string) ([]*model.User, *model.AppError)
        + GetTeamSchemeChannelRoles(c request.CTX, teamID string) (string, string, string, *model.AppError)
        + GetTotalUsersStats(viewRestrictions *model.ViewUsersRestrictions) (*model.UsersStats, *model.AppError)
        + GetUserStatusesByIds(userIDs []string) ([]*model.Status, *model.AppError)
        + HasRemote(channelID string, remoteID string) (bool, error)
        + HubRegister(webConn *platform.WebConn) 
        + HubUnregister(webConn *platform.WebConn) 
        + InstallPlugin(pluginFile io.ReadSeeker, replace bool) (*model.Manifest, *model.AppError)
        + LogAuditRec(rctx request.CTX, rec *audit.Record, err error) 
        + LogAuditRecWithLevel(rctx request.CTX, rec *audit.Record, level mlog.Level, err error) 
        + MakeAuditRecord(rctx request.CTX, event string, initialStatus string) *audit.Record
        + MarkChannelAsUnreadFromPost(c request.CTX, postID string, userID string, collapsedThreadsSupported bool) (*model.ChannelUnreadAt, *model.AppError)
        + MentionsToPublicChannels(c request.CTX, message string, teamID string) model.ChannelMentionMap
        + MentionsToTeamMembers(c request.CTX, message string, teamID string) model.UserMentionMap
        + MoveChannel(c request.CTX, team *model.Team, channel *model.Channel, user *model.User) *model.AppError
        + NotifySessionsExpired() error
        + OnSharedChannelsAttachmentSyncMsg(fi *model.FileInfo, post *model.Post, rc *model.RemoteCluster) error
        + OnSharedChannelsPing(rc *model.RemoteCluster) bool
        + OnSharedChannelsProfileImageSyncMsg(user *model.User, rc *model.RemoteCluster) error
        + OnSharedChannelsSyncMsg(msg *model.SyncMsg, rc *model.RemoteCluster) (model.SyncResponse, error)
        + OverrideIconURLIfEmoji(c request.CTX, post *model.Post) 
        + PatchBot(rctx request.CTX, botUserId string, botPatch *model.BotPatch) (*model.Bot, *model.AppError)
        + PatchChannelModerationsForChannel(c request.CTX, channel *model.Channel, channelModerationsPatch []*model.ChannelModerationPatch) ([]*model.ChannelModeration, *model.AppError)
        + DoActionRequest(c request.CTX, rawURL string, body []byte) (*http.Response, *model.AppError)
        + PermanentDeleteBot(botUserId string) *model.AppError
        + PopulateWebConnConfig(s *model.Session, cfg *platform.WebConnConfig, seqVal string) (*platform.WebConnConfig, error)
        + PromoteGuestToUser(c request.CTX, user *model.User, requestorId string) *model.AppError
        + RemoveConfigListener(id string) 
        + RenameChannel(c request.CTX, channel *model.Channel, newChannelName string, newDisplayName string) (*model.Channel, *model.AppError)
        + RenameTeam(team *model.Team, newTeamName string, newDisplayName string) (*model.Team, *model.AppError)
        + ResolvePersistentNotification(c request.CTX, post *model.Post, loggedInUserID string) *model.AppError
        + RevokeSessionsFromAllUsers() *model.AppError
        + SaveConfig(newCfg *model.Config, sendConfigChangeClusterMessage bool) (*model.Config, *model.Config, *model.AppError)
        + SearchAllChannels(c request.CTX, term string, opts model.ChannelSearchOpts) (model.ChannelListWithTeamData, int64, *model.AppError)
        + SearchAllTeams(searchOpts *model.TeamSearch) ([]*model.Team, int64, *model.AppError)
        + SendNoCardPaymentFailedEmail() *model.AppError
        + SessionHasPermissionToChannels(c request.CTX, session model.Session, channelIDs []string, permission *model.Permission) bool
        + SessionHasPermissionToManageBot(session model.Session, botUserId string) *model.AppError
        + SessionHasPermissionToTeams(c request.CTX, session model.Session, teamIDs []string, permission *model.Permission) bool
        + SessionIsRegistered(session model.Session) bool
        + SetSessionExpireInHours(session *model.Session, hours int) 
        + SetStatusDoNotDisturbTimed(userId string, endtime int64) 
        + SetStatusLastActivityAt(userID string, activityAt int64) 
        + SyncLdap(c request.CTX, includeRemovedMembers bool) 
        + SyncPlugins() *model.AppError
        + SyncRolesAndMembership(c request.CTX, syncableID string, syncableType model.GroupSyncableType, includeRemovedMembers bool) 
        + SyncSharedChannel(channelID string) error
        + SyncSyncableRoles(syncableID string, syncableType model.GroupSyncableType) *model.AppError
        + TeamMembersMinusGroupMembers(teamID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, int64, *model.AppError)
        + TeamMembersToAdd(since int64, teamID *string, includeRemovedMembers bool) ([]*model.UserTeamIDPair, *model.AppError)
        + DoAdvancedPermissionsMigration() 
        + CreateZipFileAndAddFiles(fileBackend filestore.FileBackend, fileDatas []model.FileData, zipFileName string, directory string) error
        + DoubleCheckPassword(rctx request.CTX, user *model.User, password string) *model.AppError
        + UpdateBotActive(c request.CTX, botUserId string, active bool) (*model.Bot, *model.AppError)
        + UpdateBotOwner(botUserId string, newOwnerId string) (*model.Bot, *model.AppError)
        + UpdateChannel(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + UpdateChannelScheme(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + UpdateDNDStatusOfUsers() 
        + UpdateProductNotices() *model.AppError
        + UpdateSharedChannelCursor(channelID string, remoteID string, cursor model.GetPostsSinceForSyncCursor) error
        + UpdateViewedProductNotices(userID string, noticeIds []string) *model.AppError
        + UpdateViewedProductNoticesForNewUser(userID string) 
        + UpdateWebConnUserActivity(session model.Session, activityAt int64) 
        + UploadFile(c request.CTX, data []byte, channelID string, filename string) (*model.FileInfo, *model.AppError)
        + UploadFileX(c request.CTX, channelID string, name string, input io.Reader, opts ...<font color=blue>func</font>(*UploadFileTask) ) (*model.FileInfo, *model.AppError)
        + UserIsInAdminRoleGroup(userID string, syncableID string, syncableType model.GroupSyncableType) (bool, *model.AppError)
        + ValidateUserPermissionsOnChannels(c request.CTX, userId string, channelIds []string) []string
        + VerifyPlugin(plugin io.ReadSeeker, signature io.ReadSeeker) *model.AppError
        + ValidateMoveOrCopy(c request.CTX, wpl *model.WranglerPostList, originalChannel *model.Channel, targetChannel *model.Channel, user *model.User) error
        + AccountMigration() einterfaces.AccountMigrationInterface
        + ActivateMfa(userID string, token string) *model.AppError
        + ActiveSearchBackend() string
        + AddChannelsToRetentionPolicy(policyID string, channelIDs []string) *model.AppError
        + AddConfigListener(listener <font color=blue>func</font>(*model.Config, *model.Config) ) string
        + AddDirectChannels(c request.CTX, teamID string, user *model.User) *model.AppError
        + AddLdapPrivateCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddLdapPublicCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddRemoteCluster(rc *model.RemoteCluster) (*model.RemoteCluster, *model.AppError)
        + AddSamlIdpCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddSamlPrivateCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddSamlPublicCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddSessionToCache(session *model.Session) 
        + AddTeamMember(c request.CTX, teamID string, userID string) (*model.TeamMember, *model.AppError)
        + AddTeamMemberByInviteId(c request.CTX, inviteId string, userID string) (*model.TeamMember, *model.AppError)
        + AddTeamMemberByToken(c request.CTX, userID string, tokenID string) (*model.TeamMember, *model.AppError)
        + AddTeamMembers(c request.CTX, teamID string, userIDs []string, userRequestorId string, graceful bool) ([]*model.TeamMemberWithError, *model.AppError)
        + AddTeamsToRetentionPolicy(policyID string, teamIDs []string) *model.AppError
        + AddUserToTeam(c request.CTX, teamID string, userID string, userRequestorId string) (*model.Team, *model.TeamMember, *model.AppError)
        + AddUserToTeamByInviteId(c request.CTX, inviteId string, userID string) (*model.Team, *model.TeamMember, *model.AppError)
        + AddUserToTeamByTeamId(c request.CTX, teamID string, user *model.User) *model.AppError
        + AddUserToTeamByToken(c request.CTX, userID string, tokenID string) (*model.Team, *model.TeamMember, *model.AppError)
        + AdjustImage(file io.Reader) (*bytes.Buffer, *model.AppError)
        + AdjustInProductLimits(limits *model.ProductLimits, subscription *model.Subscription) *model.AppError
        + AdjustTeamsFromProductLimits(teamLimits *model.TeamsLimits) *model.AppError
        + AllowOAuthAppAccessToUser(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + AppendFile(fr io.Reader, path string) (int64, *model.AppError)
        + AsymmetricSigningKey() *ecdsa.PrivateKey
        + AttachCloudSessionCookie(c request.CTX, w http.ResponseWriter, r *http.Request) 
        + AttachDeviceId(sessionID string, deviceID string, expiresAt int64) *model.AppError
        + AttachSessionCookies(c request.CTX, w http.ResponseWriter, r *http.Request) 
        + AuthenticateUserForLogin(c request.CTX, id string, loginId string, password string, mfaToken string, cwsToken string, ldapOnly bool) (*model.User, *model.AppError)
        + AuthorizeOAuthUser(c request.CTX, w http.ResponseWriter, r *http.Request, service string, code string, state string, redirectURI string) (io.ReadCloser, string, <font color=blue>map</font>[string]string, *model.User, *model.AppError)
        + AutocompleteChannels(c request.CTX, userID string, term string) (model.ChannelListWithTeamData, *model.AppError)
        + AutocompleteChannelsForSearch(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + AutocompleteChannelsForTeam(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + AutocompleteUsersInChannel(rctx request.CTX, teamID string, channelID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInChannel, *model.AppError)
        + AutocompleteUsersInTeam(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInTeam, *model.AppError)
        + BuildPostReactions(ctx request.CTX, postID string) (*[]ReactionImportData, *model.AppError)
        + BuildPushNotificationMessage(c request.CTX, contentsConfig string, post *model.Post, user *model.User, channel *model.Channel, channelName string, senderName string, explicitMention bool, channelWideMention bool, replyToThreadType string) (*model.PushNotification, *model.AppError)
        + BuildSamlMetadataObject(idpMetadata []byte) (*model.SamlMetadataResponse, *model.AppError)
        + BulkExport(ctx request.CTX, writer io.Writer, outPath string, job *model.Job, opts model.BulkExportOpts) *model.AppError
        + BulkImport(c request.CTX, jsonlReader io.Reader, attachmentsReader *zip.Reader, dryRun bool, workers int) (*model.AppError, int)
        + BulkImportWithPath(c request.CTX, jsonlReader io.Reader, attachmentsReader *zip.Reader, dryRun bool, workers int, importPath string) (*model.AppError, int)
        + CanNotifyAdmin(trial bool) bool
        + CancelJob(c request.CTX, jobId string) *model.AppError
        + ChannelMembersToRemove(teamID *string) ([]*model.ChannelMember, *model.AppError)
        + Channels() *Channels
        + CheckCanInviteToSharedChannel(channelId string) error
        + CheckForClientSideCert(r *http.Request) (string, string, string)
        + CheckIntegrity() <font color=blue>chan</font> model.IntegrityCheckResult
        + CheckMandatoryS3Fields(settings *model.FileSettings) *model.AppError
        + CheckPasswordAndAllCriteria(rctx request.CTX, user *model.User, password string, mfaToken string) *model.AppError
        + CheckPostReminders(rctx request.CTX) 
        + CheckRolesExist(roleNames []string) *model.AppError
        + CheckUserAllAuthenticationCriteria(rctx request.CTX, user *model.User, mfaToken string) *model.AppError
        + CheckUserMfa(rctx request.CTX, user *model.User, token string) *model.AppError
        + CheckUserPostflightAuthenticationCriteria(rctx request.CTX, user *model.User) *model.AppError
        + CheckUserPreflightAuthenticationCriteria(rctx request.CTX, user *model.User, mfaToken string) *model.AppError
        + CheckWebConn(userID string, connectionID string) *platform.CheckConnResult
        + CleanupReportChunks(format string, prefix string, numberOfChunks int) *model.AppError
        + ClearChannelMembersCache(c request.CTX, channelID string) error
        + ClearLatestVersionCache(rctx request.CTX) 
        + ClearSessionCacheForAllUsers() 
        + ClearSessionCacheForAllUsersSkipClusterSend() 
        + ClearSessionCacheForUser(userID string) 
        + ClearSessionCacheForUserSkipClusterSend(userID string) 
        + ClearTeamMembersCache(teamID string) error
        + ClientConfig() <font color=blue>map</font>[string]string
        + ClientConfigHash() string
        + Cloud() einterfaces.CloudInterface
        + Cluster() einterfaces.ClusterInterface
        + CompareAndDeletePluginKey(pluginID string, key string, oldValue []byte) (bool, *model.AppError)
        + CompareAndSetPluginKey(pluginID string, key string, oldValue []byte, newValue []byte) (bool, *model.AppError)
        + CompileReportChunks(format string, prefix string, numberOfChunks int, headers []string) *model.AppError
        + CompleteOAuth(c request.CTX, service string, body io.ReadCloser, teamID string, props <font color=blue>map</font>[string]string, tokenUser *model.User) (*model.User, *model.AppError)
        + CompleteOnboarding(c request.CTX, request *model.CompleteOnboardingRequest) *model.AppError
        + CompleteSwitchWithOAuth(c request.CTX, service string, userData io.Reader, email string, tokenUser *model.User) (*model.User, *model.AppError)
        + Compliance() einterfaces.ComplianceInterface
        + Config() *model.Config
        + ConvertGroupMessageToChannel(c request.CTX, convertedByUserId string, gmConversionRequest *model.GroupMessageConversionRequestBody) (*model.Channel, *model.AppError)
        + CopyFileInfos(rctx request.CTX, userID string, fileIDs []string) ([]string, *model.AppError)
        + CopyWranglerPostlist(c request.CTX, wpl *model.WranglerPostList, targetChannel *model.Channel) (*model.Post, *model.AppError)
        + CreateChannel(c request.CTX, channel *model.Channel, addMember bool) (*model.Channel, *model.AppError)
        + CreateChannelWithUser(c request.CTX, channel *model.Channel, userID string) (*model.Channel, *model.AppError)
        + CreateCommand(cmd *model.Command) (*model.Command, *model.AppError)
        + CreateCommandWebhook(commandID string, args *model.CommandArgs) (*model.CommandWebhook, *model.AppError)
        + CreateEmoji(c request.CTX, sessionUserId string, emoji *model.Emoji, multiPartImageData *multipart.Form) (*model.Emoji, *model.AppError)
        + CreateGroup(group *model.Group) (*model.Group, *model.AppError)
        + CreateGroupChannel(c request.CTX, userIDs []string, creatorId string) (*model.Channel, *model.AppError)
        + CreateGroupWithUserIds(group *model.GroupWithUserIds) (*model.Group, *model.AppError)
        + CreateIncomingWebhookForChannel(creatorId string, channel *model.Channel, hook *model.IncomingWebhook) (*model.IncomingWebhook, *model.AppError)
        + CreateJob(c request.CTX, job *model.Job) (*model.Job, *model.AppError)
        + CreateOAuthApp(app *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + CreateOAuthStateToken(extra string) (*model.Token, *model.AppError)
        + CreateOAuthUser(c request.CTX, service string, userData io.Reader, teamID string, tokenUser *model.User) (*model.User, *model.AppError)
        + CreateOutgoingWebhook(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + CreatePasswordRecoveryToken(userID string, email string) (*model.Token, *model.AppError)
        + CreatePost(c request.CTX, post *model.Post, channel *model.Channel, triggerWebhooks bool, setOnline bool) (*model.Post, *model.AppError)
        + CreatePostAsUser(c request.CTX, post *model.Post, currentSessionId string, setOnline bool) (*model.Post, *model.AppError)
        + CreatePostMissingChannel(c request.CTX, post *model.Post, triggerWebhooks bool, setOnline bool) (*model.Post, *model.AppError)
        + CreateRetentionPolicy(policy *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + CreateRole(role *model.Role) (*model.Role, *model.AppError)
        + CreateSamlRelayToken(extra string) (*model.Token, *model.AppError)
        + CreateScheme(scheme *model.Scheme) (*model.Scheme, *model.AppError)
        + CreateSession(c request.CTX, session *model.Session) (*model.Session, *model.AppError)
        + CreateSidebarCategory(c request.CTX, userID string, teamID string, newCategory *model.SidebarCategoryWithChannels) (*model.SidebarCategoryWithChannels, *model.AppError)
        + CreateTeam(c request.CTX, team *model.Team) (*model.Team, *model.AppError)
        + CreateTeamWithUser(c request.CTX, team *model.Team, userID string) (*model.Team, *model.AppError)
        + CreateTermsOfService(text string, userID string) (*model.TermsOfService, *model.AppError)
        + CreateUploadSession(c request.CTX, us *model.UploadSession) (*model.UploadSession, *model.AppError)
        + CreateUserAccessToken(token *model.UserAccessToken) (*model.UserAccessToken, *model.AppError)
        + CreateUserAsAdmin(c request.CTX, user *model.User, redirect string) (*model.User, *model.AppError)
        + CreateUserFromSignup(c request.CTX, user *model.User, redirect string) (*model.User, *model.AppError)
        + CreateUserWithInviteId(c request.CTX, user *model.User, inviteId string, redirect string) (*model.User, *model.AppError)
        + CreateUserWithToken(c request.CTX, user *model.User, token *model.Token) (*model.User, *model.AppError)
        + CreateWebhookPost(c request.CTX, userID string, channel *model.Channel, text string, overrideUsername string, overrideIconURL string, overrideIconEmoji string, props model.StringInterface, postType string, postRootId string) (*model.Post, *model.AppError)
        + DBHealthCheckDelete() error
        + DBHealthCheckWrite() error
        + DataRetention() einterfaces.DataRetentionInterface
        + DeactivateGuests(c request.CTX) *model.AppError
        + DeactivateMfa(userID string) *model.AppError
        + DeauthorizeOAuthAppForUser(c request.CTX, userID string, appID string) *model.AppError
        + DeleteAcknowledgementForPost(c request.CTX, postID string, userID string) *model.AppError
        + DeleteAllExpiredPluginKeys() *model.AppError
        + DeleteAllKeysForPlugin(pluginID string) *model.AppError
        + DeleteBrandImage(rctx request.CTX) *model.AppError
        + DeleteChannel(c request.CTX, channel *model.Channel, userID string) *model.AppError
        + DeleteCommand(commandID string) *model.AppError
        + DeleteDraft(rctx request.CTX, draft *model.Draft, connectionID string) *model.AppError
        + DeleteEmoji(c request.CTX, emoji *model.Emoji) *model.AppError
        + DeleteEphemeralPost(userID string, postID string) 
        + DeleteExport(name string) *model.AppError
        + DeleteGroup(groupID string) (*model.Group, *model.AppError)
        + DeleteGroupMember(groupID string, userID string) (*model.GroupMember, *model.AppError)
        + DeleteGroupMembers(groupID string, userIDs []string) ([]*model.GroupMember, *model.AppError)
        + DeleteGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, *model.AppError)
        + DeleteIncomingWebhook(hookID string) *model.AppError
        + DeleteOAuthApp(appID string) *model.AppError
        + DeleteOutgoingWebhook(hookID string) *model.AppError
        + DeletePluginKey(pluginID string, key string) *model.AppError
        + DeletePost(c request.CTX, postID string, deleteByID string) (*model.Post, *model.AppError)
        + DeletePreferences(c request.CTX, userID string, preferences model.Preferences) *model.AppError
        + DeleteReactionForPost(c request.CTX, reaction *model.Reaction) *model.AppError
        + DeleteRemoteCluster(remoteClusterId string) (bool, *model.AppError)
        + DeleteRetentionPolicy(policyID string) *model.AppError
        + DeleteScheme(schemeId string) (*model.Scheme, *model.AppError)
        + DeleteSharedChannelRemote(id string) (bool, error)
        + DeleteSidebarCategory(c request.CTX, userID string, teamID string, categoryId string) *model.AppError
        + DeleteToken(token *model.Token) *model.AppError
        + DisableAutoResponder(rctx request.CTX, userID string, asAdmin bool) *model.AppError
        + DisableUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + DoAppMigrations() 
        + DoCheckForAdminNotifications(trial bool) *model.AppError
        + DoCommandRequest(rctx request.CTX, cmd *model.Command, p url.Values) (*model.Command, *model.CommandResponse, *model.AppError)
        + DoEmojisPermissionsMigration() 
        + DoGuestRolesCreationMigration() 
        + DoLocalRequest(c request.CTX, rawURL string, body []byte) (*http.Response, *model.AppError)
        + DoLogin(c request.CTX, w http.ResponseWriter, r *http.Request, user *model.User, deviceID string, isMobile bool, isOAuthUser bool, isSaml bool) (*model.Session, *model.AppError)
        + DoPostActionWithCookie(c request.CTX, postID string, actionId string, userID string, selectedOption string, cookie *model.PostActionCookie) (string, *model.AppError)
        + DoSubscriptionRenewalCheck() 
        + DoSystemConsoleRolesCreationMigration() 
        + DoUploadFile(c request.CTX, now time.Time, rawTeamId string, rawChannelId string, rawUserId string, rawFilename string, data []byte) (*model.FileInfo, *model.AppError)
        + DoUploadFileExpectModification(c request.CTX, now time.Time, rawTeamId string, rawChannelId string, rawUserId string, rawFilename string, data []byte) (*model.FileInfo, []byte, *model.AppError)
        + DownloadFromURL(downloadURL string) ([]byte, error)
        + EnableUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + EnvironmentConfig(filter <font color=blue>func</font>(reflect.StructField) bool) <font color=blue>map</font>[string]any
        + ExportFileBackend() filestore.FileBackend
        + ExportFileExists(path string) (bool, *model.AppError)
        + ExportFileModTime(path string) (time.Time, *model.AppError)
        + ExportPermissions(w io.Writer) error
        + ExtractContentFromFileInfo(rctx request.CTX, fileInfo *model.FileInfo) error
        + FetchSamlMetadataFromIdp(url string) ([]byte, *model.AppError)
        + FileBackend() filestore.FileBackend
        + FileExists(path string) (bool, *model.AppError)
        + FileModTime(path string) (time.Time, *model.AppError)
        + FileSize(path string) (int64, *model.AppError)
        + FillInChannelProps(c request.CTX, channel *model.Channel) *model.AppError
        + FillInChannelsProps(c request.CTX, channelList model.ChannelList) *model.AppError
        + FilterUsersByVisible(c request.CTX, viewer *model.User, otherUsers []*model.User) ([]*model.User, *model.AppError)
        + FindTeamByName(name string) bool
        + FinishSendAdminNotifyPost(trial bool, now int64, pluginBasedData <font color=blue>map</font>[string][]*model.NotifyAdminData) 
        + GenerateAndSaveDesktopToken(createAt int64, user *model.User) (*string, *model.AppError)
        + GenerateMfaSecret(userID string) (*model.MfaSecret, *model.AppError)
        + GeneratePresignURLForExport(name string) (*model.PresignURLResponse, *model.AppError)
        + GeneratePublicLink(siteURL string, info *model.FileInfo) string
        + GenerateSupportPacket(c request.CTX) []model.FileData
        + GetAcknowledgementsForPost(postID string) ([]*model.PostAcknowledgement, *model.AppError)
        + GetAcknowledgementsForPostList(postList *model.PostList) (<font color=blue>map</font>[string][]*model.PostAcknowledgement, *model.AppError)
        + GetActivePluginManifests() ([]*model.Manifest, *model.AppError)
        + GetAllChannels(c request.CTX, page int, perPage int, opts model.ChannelSearchOpts) (model.ChannelListWithTeamData, *model.AppError)
        + GetAllChannelsCount(c request.CTX, opts model.ChannelSearchOpts) (int64, *model.AppError)
        + GetAllPrivateTeams() ([]*model.Team, *model.AppError)
        + GetAllPublicTeams() ([]*model.Team, *model.AppError)
        + GetAllRemoteClusters(filter model.RemoteClusterQueryFilter) ([]*model.RemoteCluster, *model.AppError)
        + GetAllRoles() ([]*model.Role, *model.AppError)
        + GetAllTeams() ([]*model.Team, *model.AppError)
        + GetAllTeamsPage(offset int, limit int, opts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + GetAllTeamsPageWithCount(offset int, limit int, opts *model.TeamSearch) (*model.TeamsWithCount, *model.AppError)
        + GetAnalytics(name string, teamID string) (model.AnalyticsRows, *model.AppError)
        + GetAppliedSchemaMigrations() ([]model.AppliedMigration, *model.AppError)
        + GetAudits(rctx request.CTX, userID string, limit int) (model.Audits, *model.AppError)
        + GetAuditsPage(rctx request.CTX, userID string, page int, perPage int) (model.Audits, *model.AppError)
        + GetAuthorizationCode(c request.CTX, w http.ResponseWriter, r *http.Request, service string, props <font color=blue>map</font>[string]string, loginHint string) (string, *model.AppError)
        + GetAuthorizedAppsForUser(userID string, page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + GetBrandImage(rctx request.CTX) ([]byte, *model.AppError)
        + GetBulkReactionsForPosts(postIDs []string) (<font color=blue>map</font>[string][]*model.Reaction, *model.AppError)
        + GetChannel(c request.CTX, channelID string) (*model.Channel, *model.AppError)
        + GetChannelByName(c request.CTX, channelName string, teamID string, includeDeleted bool) (*model.Channel, *model.AppError)
        + GetChannelByNameForTeamName(c request.CTX, channelName string, teamName string, includeDeleted bool) (*model.Channel, *model.AppError)
        + GetChannelCounts(c request.CTX, teamID string, userID string) (*model.ChannelCounts, *model.AppError)
        + GetChannelFileCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelGuestCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelMember(c request.CTX, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + GetChannelMemberCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelMembersByIds(c request.CTX, channelID string, userIDs []string) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersForUser(c request.CTX, teamID string, userID string) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersForUserWithPagination(c request.CTX, userID string, page int, perPage int) ([]*model.ChannelMember, *model.AppError)
        + GetChannelMembersPage(c request.CTX, channelID string, page int, perPage int) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersTimezones(c request.CTX, channelID string) ([]string, *model.AppError)
        + GetChannelMembersWithTeamDataForUserWithPagination(c request.CTX, userID string, page int, perPage int) (model.ChannelMembersWithTeamData, *model.AppError)
        + GetChannelPinnedPostCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelPoliciesForUser(userID string, offset int, limit int) (*model.RetentionPolicyForChannelList, *model.AppError)
        + GetChannelUnread(c request.CTX, channelID string, userID string) (*model.ChannelUnread, *model.AppError)
        + GetChannels(c request.CTX, channelIDs []string) ([]*model.Channel, *model.AppError)
        + GetChannelsByNames(c request.CTX, channelNames []string, teamID string) ([]*model.Channel, *model.AppError)
        + GetChannelsForRetentionPolicy(policyID string, offset int, limit int) (*model.ChannelsWithCount, *model.AppError)
        + GetChannelsForScheme(scheme *model.Scheme, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetChannelsForSchemePage(scheme *model.Scheme, page int, perPage int) (model.ChannelList, *model.AppError)
        + GetChannelsForTeamForUser(c request.CTX, teamID string, userID string, opts *model.ChannelSearchOpts) (model.ChannelList, *model.AppError)
        + GetChannelsForUser(c request.CTX, userID string, includeDeleted bool, lastDeleteAt int, pageSize int, fromChannelID string) (model.ChannelList, *model.AppError)
        + GetChannelsMemberCount(c request.CTX, channelIDs []string) (<font color=blue>map</font>[string]int64, *model.AppError)
        + GetChannelsUserNotIn(c request.CTX, teamID string, userID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetCloudSession(token string) (*model.Session, *model.AppError)
        + GetClusterId() string
        + GetClusterStatus(rctx request.CTX) []*model.ClusterInfo
        + GetCommand(commandID string) (*model.Command, *model.AppError)
        + GetCommonTeamIDsForTwoUsers(userID string, otherUserID string) ([]string, *model.AppError)
        + GetComplianceFile(job *model.Compliance) ([]byte, *model.AppError)
        + GetComplianceReport(reportId string) (*model.Compliance, *model.AppError)
        + GetComplianceReports(page int, perPage int) (model.Compliances, *model.AppError)
        + GetCookieDomain() string
        + GetCustomStatus(userID string) (*model.CustomStatus, *model.AppError)
        + GetDefaultProfileImage(user *model.User) ([]byte, *model.AppError)
        + GetDeletedChannels(c request.CTX, teamID string, offset int, limit int, userID string) (model.ChannelList, *model.AppError)
        + GetDraft(userID string, channelID string, rootID string) (*model.Draft, *model.AppError)
        + GetDraftsForUser(rctx request.CTX, userID string, teamID string) ([]*model.Draft, *model.AppError)
        + GetEditHistoryForPost(postID string) ([]*model.Post, *model.AppError)
        + GetEmoji(c request.CTX, emojiId string) (*model.Emoji, *model.AppError)
        + GetEmojiByName(c request.CTX, emojiName string) (*model.Emoji, *model.AppError)
        + GetEmojiImage(c request.CTX, emojiId string) ([]byte, string, *model.AppError)
        + GetEmojiList(c request.CTX, page int, perPage int, sort string) ([]*model.Emoji, *model.AppError)
        + GetFile(rctx request.CTX, fileID string) ([]byte, *model.AppError)
        + GetFileInfo(rctx request.CTX, fileID string) (*model.FileInfo, *model.AppError)
        + GetFileInfos(rctx request.CTX, page int, perPage int, opt *model.GetFileInfosOptions) ([]*model.FileInfo, *model.AppError)
        + GetFileInfosForPostWithMigration(rctx request.CTX, postID string, includeDeleted bool) ([]*model.FileInfo, *model.AppError)
        + GetFlaggedPosts(userID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetFlaggedPostsForChannel(userID string, channelID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetFlaggedPostsForTeam(userID string, teamID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetGlobalRetentionPolicy() (*model.GlobalRetentionPolicy, *model.AppError)
        + GetGroup(id string, opts *model.GetGroupOpts, viewRestrictions *model.ViewUsersRestrictions) (*model.Group, *model.AppError)
        + GetGroupByName(name string, opts model.GroupSearchOpts) (*model.Group, *model.AppError)
        + GetGroupByRemoteID(remoteID string, groupSource model.GroupSource) (*model.Group, *model.AppError)
        + GetGroupChannel(c request.CTX, userIDs []string) (*model.Channel, *model.AppError)
        + GetGroupMemberCount(groupID string, viewRestrictions *model.ViewUsersRestrictions) (int64, *model.AppError)
        + GetGroupMemberUsers(groupID string) ([]*model.User, *model.AppError)
        + GetGroupMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, int, *model.AppError)
        + GetGroupMemberUsersSortedPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions, teammateNameDisplay string) ([]*model.User, int, *model.AppError)
        + GetGroupMessageMembersCommonTeams(c request.CTX, channelID string) ([]*model.Team, *model.AppError)
        + GetGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, *model.AppError)
        + GetGroupSyncables(groupID string, syncableType model.GroupSyncableType) ([]*model.GroupSyncable, *model.AppError)
        + GetGroups(page int, perPage int, opts model.GroupSearchOpts, viewRestrictions *model.ViewUsersRestrictions) ([]*model.Group, *model.AppError)
        + GetGroupsAssociatedToChannelsByTeam(teamID string, opts model.GroupSearchOpts) (<font color=blue>map</font>[string][]*model.GroupWithSchemeAdmin, *model.AppError)
        + GetGroupsByChannel(channelID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, int, *model.AppError)
        + GetGroupsByIDs(groupIDs []string) ([]*model.Group, *model.AppError)
        + GetGroupsBySource(groupSource model.GroupSource) ([]*model.Group, *model.AppError)
        + GetGroupsByUserId(userID string) ([]*model.Group, *model.AppError)
        + GetHubForUserId(userID string) *platform.Hub
        + GetIncomingWebhook(hookID string) (*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksForTeamPage(teamID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksForTeamPageByUser(teamID string, userID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksPage(page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksPageByUser(userID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetJob(c request.CTX, id string) (*model.Job, *model.AppError)
        + GetJobsByType(c request.CTX, jobType string, offset int, limit int) ([]*model.Job, *model.AppError)
        + GetJobsByTypePage(c request.CTX, jobType string, page int, perPage int) ([]*model.Job, *model.AppError)
        + GetJobsByTypes(c request.CTX, jobTypes []string, offset int, limit int) ([]*model.Job, *model.AppError)
        + GetJobsByTypesPage(c request.CTX, jobType []string, page int, perPage int) ([]*model.Job, *model.AppError)
        + GetLatestTermsOfService() (*model.TermsOfService, *model.AppError)
        + GetLatestVersion(rctx request.CTX, latestVersionUrl string) (*model.GithubReleaseInfo, *model.AppError)
        + GetLogs(rctx request.CTX, page int, perPage int) ([]string, *model.AppError)
        + GetLogsSkipSend(rctx request.CTX, page int, perPage int, logFilter *model.LogFilter) ([]string, *model.AppError)
        + GetMemberCountsByGroup(rctx request.CTX, channelID string, includeTimezones bool) ([]*model.ChannelMemberCountByGroup, *model.AppError)
        + GetMessageForNotification(post *model.Post, teamName string, siteUrl string, translateFunc i18n.TranslateFunc) string
        + GetMultipleEmojiByName(c request.CTX, names []string) ([]*model.Emoji, *model.AppError)
        + GetNewUsersForTeamPage(teamID string, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetNextPostIdFromPostList(postList *model.PostList, collapsedThreads bool) string
        + GetNotificationNameFormat(user *model.User) string
        + GetNumberOfChannelsOnTeam(c request.CTX, teamID string) (int, *model.AppError)
        + GetOAuthAccessTokenForCodeFlow(c request.CTX, clientId string, grantType string, redirectURI string, code string, secret string, refreshToken string) (*model.AccessResponse, *model.AppError)
        + GetOAuthAccessTokenForImplicitFlow(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (*model.Session, *model.AppError)
        + GetOAuthApp(appID string) (*model.OAuthApp, *model.AppError)
        + GetOAuthApps(page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + GetOAuthAppsByCreator(userID string, page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + GetOAuthCodeRedirect(userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + GetOAuthImplicitRedirect(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + GetOAuthLoginEndpoint(c request.CTX, w http.ResponseWriter, r *http.Request, service string, teamID string, action string, redirectTo string, loginHint string, isMobile bool, desktopToken string) (string, *model.AppError)
        + GetOAuthSignupEndpoint(c request.CTX, w http.ResponseWriter, r *http.Request, service string, teamID string, desktopToken string) (string, *model.AppError)
        + GetOAuthStateToken(token string) (*model.Token, *model.AppError)
        + GetOnboarding() (*model.System, *model.AppError)
        + GetOpenGraphMetadata(requestURL string) ([]byte, error)
        + GetOrCreateDirectChannel(c request.CTX, userID string, otherUserID string, channelOptions ...model.ChannelOption) (*model.Channel, *model.AppError)
        + GetOrCreateTrueUpReviewStatus() (*model.TrueUpReviewStatus, *model.AppError)
        + GetOutgoingWebhook(hookID string) (*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForChannelPageByUser(channelID string, userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForTeamPage(teamID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForTeamPageByUser(teamID string, userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksPage(page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksPageByUser(userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetPasswordRecoveryToken(token string) (*model.Token, *model.AppError)
        + GetPermalinkPost(c request.CTX, postID string, userID string) (*model.PostList, *model.AppError)
        + GetPinnedPosts(c request.CTX, channelID string) (*model.PostList, *model.AppError)
        + GetPluginKey(pluginID string, key string) ([]byte, *model.AppError)
        + GetPlugins() (*model.PluginsResponse, *model.AppError)
        + GetPostAfterTime(channelID string, time int64, collapsedThreads bool) (*model.Post, *model.AppError)
        + GetPostIdAfterTime(channelID string, time int64, collapsedThreads bool) (string, *model.AppError)
        + GetPostIdBeforeTime(channelID string, time int64, collapsedThreads bool) (string, *model.AppError)
        + GetPostIfAuthorized(c request.CTX, postID string, session *model.Session, includeDeleted bool) (*model.Post, *model.AppError)
        + GetPostInfo(c request.CTX, postID string) (*model.PostInfo, *model.AppError)
        + GetPostThread(postID string, opts model.GetPostsOptions, userID string) (*model.PostList, *model.AppError)
        + GetPosts(channelID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetPostsAfterPost(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsAroundPost(before bool, options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsBeforePost(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsEtag(channelID string, collapsedThreads bool) string
        + GetPostsForChannelAroundLastUnread(c request.CTX, channelID string, userID string, limitBefore int, limitAfter int, skipFetchThreads bool, collapsedThreads bool, collapsedThreadsExtended bool) (*model.PostList, *model.AppError)
        + GetPostsPage(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsSince(options model.GetPostsSinceOptions) (*model.PostList, *model.AppError)
        + GetPreferenceByCategoryAndNameForUser(c request.CTX, userID string, category string, preferenceName string) (*model.Preference, *model.AppError)
        + GetPreferenceByCategoryForUser(c request.CTX, userID string, category string) (model.Preferences, *model.AppError)
        + GetPreferencesForUser(c request.CTX, userID string) (model.Preferences, *model.AppError)
        + GetPrevPostIdFromPostList(postList *model.PostList, collapsedThreads bool) string
        + GetPriorityForPost(postId string) (*model.PostPriority, *model.AppError)
        + GetPriorityForPostList(list *model.PostList) (<font color=blue>map</font>[string]*model.PostPriority, *model.AppError)
        + GetPrivateChannelsForTeam(c request.CTX, teamID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetProfileImage(user *model.User) ([]byte, bool, *model.AppError)
        + GetPublicChannelsByIdsForTeam(c request.CTX, teamID string, channelIDs []string) (model.ChannelList, *model.AppError)
        + GetPublicChannelsForTeam(c request.CTX, teamID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetReactionsForPost(postID string) ([]*model.Reaction, *model.AppError)
        + GetRecentlyActiveUsersForTeam(teamID string) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetRecentlyActiveUsersForTeamPage(teamID string, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetRemoteCluster(remoteClusterId string) (*model.RemoteCluster, *model.AppError)
        + GetRemoteClusterForUser(remoteID string, userID string) (*model.RemoteCluster, *model.AppError)
        + GetRemoteClusterService() (remotecluster.RemoteClusterServiceIFace, *model.AppError)
        + GetRemoteClusterSession(token string, remoteId string) (*model.Session, *model.AppError)
        + GetRetentionPolicies(offset int, limit int) (*model.RetentionPolicyWithTeamAndChannelCountsList, *model.AppError)
        + GetRetentionPoliciesCount() (int64, *model.AppError)
        + GetRetentionPolicy(policyID string) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + GetRole(id string) (*model.Role, *model.AppError)
        + GetRoleByName(ctx context.Context, name string) (*model.Role, *model.AppError)
        + GetRolesByNames(names []string) ([]*model.Role, *model.AppError)
        + GetSamlCertificateStatus() *model.SamlCertificateStatus
        + GetSamlEmailToken(token string) (*model.Token, *model.AppError)
        + GetSamlMetadata(c request.CTX) (string, *model.AppError)
        + GetSamlMetadataFromIdp(idpMetadataURL string) (*model.SamlMetadataResponse, *model.AppError)
        + GetSanitizeOptions(asAdmin bool) <font color=blue>map</font>[string]bool
        + GetScheme(id string) (*model.Scheme, *model.AppError)
        + GetSchemeByName(name string) (*model.Scheme, *model.AppError)
        + GetSchemeRolesForTeam(teamID string) (string, string, string, *model.AppError)
        + GetSchemes(scope string, offset int, limit int) ([]*model.Scheme, *model.AppError)
        + GetSchemesPage(scope string, page int, perPage int) ([]*model.Scheme, *model.AppError)
        + GetSession(token string) (*model.Session, *model.AppError)
        + GetSessionById(c request.CTX, sessionID string) (*model.Session, *model.AppError)
        + GetSessions(c request.CTX, userID string) ([]*model.Session, *model.AppError)
        + GetSharedChannel(channelID string) (*model.SharedChannel, error)
        + GetSharedChannelRemote(id string) (*model.SharedChannelRemote, error)
        + GetSharedChannelRemoteByIds(channelID string, remoteID string) (*model.SharedChannelRemote, error)
        + GetSharedChannelRemotes(opts model.SharedChannelRemoteFilterOpts) ([]*model.SharedChannelRemote, error)
        + GetSharedChannelRemotesStatus(channelID string) ([]*model.SharedChannelRemoteStatus, error)
        + GetSharedChannels(page int, perPage int, opts model.SharedChannelFilterOpts) ([]*model.SharedChannel, *model.AppError)
        + GetSharedChannelsCount(opts model.SharedChannelFilterOpts) (int64, error)
        + GetSidebarCategories(c request.CTX, userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, *model.AppError)
        + GetSidebarCategoriesForTeamForUser(c request.CTX, userID string, teamID string) (*model.OrderedSidebarCategories, *model.AppError)
        + GetSidebarCategory(c request.CTX, categoryId string) (*model.SidebarCategoryWithChannels, *model.AppError)
        + GetSidebarCategoryOrder(c request.CTX, userID string, teamID string) ([]string, *model.AppError)
        + GetSinglePost(postID string, includeDeleted bool) (*model.Post, *model.AppError)
        + GetSiteURL() string
        + GetStatus(userID string) (*model.Status, *model.AppError)
        + GetStatusFromCache(userID string) *model.Status
        + GetSystemBot(rctx request.CTX) (*model.Bot, *model.AppError)
        + GetTeam(teamID string) (*model.Team, *model.AppError)
        + GetTeamByInviteId(inviteId string) (*model.Team, *model.AppError)
        + GetTeamByName(name string) (*model.Team, *model.AppError)
        + GetTeamIcon(team *model.Team) ([]byte, *model.AppError)
        + GetTeamIdFromQuery(query url.Values) (string, *model.AppError)
        + GetTeamMember(c request.CTX, teamID string, userID string) (*model.TeamMember, *model.AppError)
        + GetTeamMembers(teamID string, offset int, limit int, teamMembersGetOptions *model.TeamMembersGetOptions) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembersByIds(teamID string, userIDs []string, restrictions *model.ViewUsersRestrictions) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembersForUser(c request.CTX, userID string, excludeTeamID string, includeDeleted bool) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembersForUserWithPagination(userID string, page int, perPage int) ([]*model.TeamMember, *model.AppError)
        + GetTeamPoliciesForUser(userID string, offset int, limit int) (*model.RetentionPolicyForTeamList, *model.AppError)
        + GetTeamStats(teamID string, restrictions *model.ViewUsersRestrictions) (*model.TeamStats, *model.AppError)
        + GetTeamUnread(teamID string, userID string) (*model.TeamUnread, *model.AppError)
        + GetTeams(teamIDs []string) ([]*model.Team, *model.AppError)
        + GetTeamsForRetentionPolicy(policyID string, offset int, limit int) (*model.TeamsWithCount, *model.AppError)
        + GetTeamsForScheme(scheme *model.Scheme, offset int, limit int) ([]*model.Team, *model.AppError)
        + GetTeamsForSchemePage(scheme *model.Scheme, page int, perPage int) ([]*model.Team, *model.AppError)
        + GetTeamsForUser(userID string) ([]*model.Team, *model.AppError)
        + GetTeamsUnreadForUser(excludeTeamId string, userID string, includeCollapsedThreads bool) ([]*model.TeamUnread, *model.AppError)
        + GetTeamsUsage() (*model.TeamsUsage, *model.AppError)
        + GetTermsOfService(id string) (*model.TermsOfService, *model.AppError)
        + GetThreadForUser(threadMembership *model.ThreadMembership, extended bool) (*model.ThreadResponse, *model.AppError)
        + GetThreadMembershipForUser(userId string, threadId string) (*model.ThreadMembership, *model.AppError)
        + GetThreadMembershipsForUser(userID string, teamID string) ([]*model.ThreadMembership, error)
        + GetThreadsForUser(userID string, teamID string, options model.GetUserThreadsOpts) (*model.Threads, *model.AppError)
        + GetTokenById(token string) (*model.Token, *model.AppError)
        + GetTrueUpProfile() (<font color=blue>map</font>[string]any, error)
        + GetUploadSession(c request.CTX, uploadId string) (*model.UploadSession, *model.AppError)
        + GetUploadSessionsForUser(userID string) ([]*model.UploadSession, *model.AppError)
        + GetUser(userID string) (*model.User, *model.AppError)
        + GetUserAccessToken(tokenID string, sanitize bool) (*model.UserAccessToken, *model.AppError)
        + GetUserAccessTokens(page int, perPage int) ([]*model.UserAccessToken, *model.AppError)
        + GetUserAccessTokensForUser(userID string, page int, perPage int) ([]*model.UserAccessToken, *model.AppError)
        + GetUserByAuth(authData *string, authService string) (*model.User, *model.AppError)
        + GetUserByEmail(email string) (*model.User, *model.AppError)
        + GetUserByRemoteID(remoteID string) (*model.User, *model.AppError)
        + GetUserByUsername(username string) (*model.User, *model.AppError)
        + GetUserCountForReport(filter *model.UserReportOptions) (*int64, *model.AppError)
        + GetUserForLogin(c request.CTX, id string, loginId string) (*model.User, *model.AppError)
        + GetUserLimits() (*model.UserLimits, *model.AppError)
        + GetUserTermsOfService(userID string) (*model.UserTermsOfService, *model.AppError)
        + GetUsers(userIDs []string) ([]*model.User, *model.AppError)
        + GetUsersByGroupChannelIds(c request.CTX, channelIDs []string, asAdmin bool) (<font color=blue>map</font>[string][]*model.User, *model.AppError)
        + GetUsersByIds(userIDs []string, options *store.UserGetByIdsOpts) ([]*model.User, *model.AppError)
        + GetUsersByUsernames(usernames []string, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersEtag(restrictionsHash string) string
        + GetUsersForReporting(filter *model.UserReportOptions) ([]*model.UserReport, *model.AppError)
        + GetUsersFromProfiles(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannel(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelByAdmin(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelByStatus(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelMap(options *model.UserGetOptions, asAdmin bool) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetUsersInChannelPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersInChannelPageByAdmin(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersInChannelPageByStatus(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersInTeam(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInTeamEtag(teamID string, restrictionsHash string) string
        + GetUsersInTeamPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersNotInChannel(teamID string, channelID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersNotInChannelMap(teamID string, channelID string, groupConstrained bool, offset int, limit int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetUsersNotInChannelPage(teamID string, channelID string, groupConstrained bool, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersNotInGroupPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersNotInTeam(teamID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersNotInTeamEtag(teamID string, restrictionsHash string) string
        + GetUsersNotInTeamPage(teamID string, groupConstrained bool, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersWithInvalidEmails(page int, perPage int) ([]*model.User, *model.AppError)
        + GetUsersWithoutTeam(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersWithoutTeamPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetVerifyEmailToken(token string) (*model.Token, *model.AppError)
        + GetViewUsersRestrictions(c request.CTX, userID string) (*model.ViewUsersRestrictions, *model.AppError)
        + HTTPService() httpservice.HTTPService
        + HandleCommandResponse(c request.CTX, command *model.Command, args *model.CommandArgs, response *model.CommandResponse, builtIn bool) (*model.CommandResponse, *model.AppError)
        + HandleCommandResponsePost(c request.CTX, command *model.Command, args *model.CommandArgs, response *model.CommandResponse, builtIn bool) (*model.Post, *model.AppError)
        + HandleCommandWebhook(c request.CTX, hookID string, response *model.CommandResponse) *model.AppError
        + HandleImages(rctx request.CTX, previewPathList []string, thumbnailPathList []string, fileData [][]byte) 
        + HandleIncomingWebhook(c request.CTX, hookID string, req *model.IncomingWebhookRequest) *model.AppError
        + HandleMessageExportConfig(cfg *model.Config, appCfg *model.Config) 
        + HasPermissionTo(askingUserId string, permission *model.Permission) bool
        + HasPermissionToChannel(c request.CTX, askingUserId string, channelID string, permission *model.Permission) bool
        + HasPermissionToChannelByPost(c request.CTX, askingUserId string, postID string, permission *model.Permission) bool
        + HasPermissionToReadChannel(c request.CTX, userID string, channel *model.Channel) bool
        + HasPermissionToTeam(c request.CTX, askingUserId string, teamID string, permission *model.Permission) bool
        + HasPermissionToUser(askingUserId string, userID string) bool
        + HasSharedChannel(channelID string) (bool, error)
        + IPFiltering() einterfaces.IPFilteringInterface
        + ImageProxy() *imageproxy.ImageProxy
        + ImageProxyAdder() <font color=blue>func</font>(string) string
        + ImageProxyRemover() <font color=blue>func</font>(string) string
        + ImportPermissions(jsonl io.Reader) error
        + InitPlugins(c request.CTX, pluginDir string, webappPluginDir string) 
        + InvalidateAllEmailInvites(c request.CTX) *model.AppError
        + InvalidateAllResendInviteEmailJobs(c request.CTX) *model.AppError
        + InvalidateCacheForUser(userID string) 
        + InvalidatePasswordRecoveryTokensForUser(userID string) *model.AppError
        + InviteGuestsToChannels(teamID string, guestsInvite *model.GuestsInvite, senderId string) *model.AppError
        + InviteGuestsToChannelsGracefully(teamID string, guestsInvite *model.GuestsInvite, senderId string) ([]*model.EmailInviteWithError, *model.AppError)
        + InviteNewUsersToTeam(emailList []string, teamID string, senderId string) *model.AppError
        + InviteNewUsersToTeamGracefully(memberInvite *model.MemberInvite, teamID string, senderId string, reminderInterval string) ([]*model.EmailInviteWithError, *model.AppError)
        + InviteRemoteToChannel(channelID string, remoteID string, userID string, shareIfNotShared bool) error
        + IsCRTEnabledForUser(c request.CTX, userID string) bool
        + IsConfigReadOnly() bool
        + IsFirstUserAccount() bool
        + IsLeader() bool
        + IsPasswordValid(rctx request.CTX, password string) *model.AppError
        + IsPersistentNotificationsEnabled() bool
        + IsPhase2MigrationCompleted() *model.AppError
        + IsPluginActive(pluginName string) (bool, error)
        + IsPostPriorityEnabled() bool
        + IsUserSignUpAllowed() *model.AppError
        + JoinChannel(c request.CTX, channel *model.Channel, userID string) *model.AppError
        + JoinDefaultChannels(c request.CTX, teamID string, user *model.User, shouldBeAdmin bool, userRequestorId string) *model.AppError
        + JoinUserToTeam(c request.CTX, team *model.Team, user *model.User, userRequestorId string) (*model.TeamMember, *model.AppError)
        + Ldap() einterfaces.LdapInterface
        + LeaveChannel(c request.CTX, channelID string, userID string) *model.AppError
        + LeaveTeam(c request.CTX, team *model.Team, user *model.User, requestorId string) *model.AppError
        + License() *model.License
        + LimitedClientConfig() <font color=blue>map</font>[string]string
        + ListAllCommands(teamID string, T i18n.TranslateFunc) ([]*model.Command, *model.AppError)
        + ListDirectory(path string) ([]string, *model.AppError)
        + ListDirectoryRecursively(path string) ([]string, *model.AppError)
        + ListExportDirectory(path string) ([]string, *model.AppError)
        + ListExports() ([]string, *model.AppError)
        + ListImports() ([]string, *model.AppError)
        + ListPluginKeys(pluginID string, page int, perPage int) ([]string, *model.AppError)
        + ListTeamCommands(teamID string) ([]*model.Command, *model.AppError)
        + Log() *mlog.Logger
        + LoginByOAuth(c request.CTX, service string, userData io.Reader, teamID string, tokenUser *model.User) (*model.User, *model.AppError)
        + MarkChannelsAsViewed(c request.CTX, channelIDs []string, userID string, currentSessionId string, collapsedThreadsSupported bool, isCRTEnabled bool) (<font color=blue>map</font>[string]int64, *model.AppError)
        + MaxPostSize() int
        + MessageExport() einterfaces.MessageExportInterface
        + Metrics() einterfaces.MetricsInterface
        + MigrateIdLDAP(c request.CTX, toAttribute string) *model.AppError
        + MoveCommand(team *model.Team, command *model.Command) *model.AppError
        + MoveFile(oldPath string, newPath string) *model.AppError
        + MoveThread(c request.CTX, postID string, sourceChannelID string, channelID string, user *model.User) *model.AppError
        + NewPluginAPI(c request.CTX, manifest *model.Manifest) plugin.API
        + Notification() einterfaces.NotificationInterface
        + NotificationsLog() *mlog.Logger
        + NotifySelfHostedSignupProgress(progress string, userId string) 
        + NotifySharedChannelUserUpdate(user *model.User) 
        + OpenInteractiveDialog(request model.OpenDialogRequest) *model.AppError
        + OriginChecker() <font color=blue>func</font>(*http.Request) bool
        + OutgoingOAuthConnections() einterfaces.OutgoingOAuthConnectionInterface
        + PatchChannel(c request.CTX, channel *model.Channel, patch *model.ChannelPatch, userID string) (*model.Channel, *model.AppError)
        + PatchChannelMembersNotifyProps(c request.CTX, members []*model.ChannelMemberIdentifier, notifyProps <font color=blue>map</font>[string]string) ([]*model.ChannelMember, *model.AppError)
        + PatchPost(c request.CTX, postID string, patch *model.PostPatch) (*model.Post, *model.AppError)
        + PatchRetentionPolicy(patch *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + PatchRole(role *model.Role, patch *model.RolePatch) (*model.Role, *model.AppError)
        + PatchScheme(scheme *model.Scheme, patch *model.SchemePatch) (*model.Scheme, *model.AppError)
        + PatchTeam(teamID string, patch *model.TeamPatch) (*model.Team, *model.AppError)
        + PatchUser(c request.CTX, userID string, patch *model.UserPatch, asAdmin bool) (*model.User, *model.AppError)
        + PermanentDeleteAllUsers(c request.CTX) *model.AppError
        + PermanentDeleteChannel(c request.CTX, channel *model.Channel) *model.AppError
        + PermanentDeleteTeam(c request.CTX, team *model.Team) *model.AppError
        + PermanentDeleteTeamId(c request.CTX, teamID string) *model.AppError
        + PermanentDeleteUser(c request.CTX, user *model.User) *model.AppError
        + PostActionCookieSecret() []byte
        + PostAddToChannelMessage(c request.CTX, user *model.User, addedUser *model.User, channel *model.Channel, postRootId string) *model.AppError
        + PostPatchWithProxyRemovedFromImageURLs(patch *model.PostPatch) *model.PostPatch
        + PostUpdateChannelDisplayNameMessage(c request.CTX, userID string, channel *model.Channel, oldChannelDisplayName string, newChannelDisplayName string) *model.AppError
        + PostUpdateChannelHeaderMessage(c request.CTX, userID string, channel *model.Channel, oldChannelHeader string, newChannelHeader string) *model.AppError
        + PostUpdateChannelPurposeMessage(c request.CTX, userID string, channel *model.Channel, oldChannelPurpose string, newChannelPurpose string) *model.AppError
        + PostWithProxyAddedToImageURLs(post *model.Post) *model.Post
        + PostWithProxyRemovedFromImageURLs(post *model.Post) *model.Post
        + PreparePostForClient(c request.CTX, originalPost *model.Post, isNewPost bool, isEditPost bool, includePriority bool) *model.Post
        + PreparePostForClientWithEmbedsAndImages(c request.CTX, originalPost *model.Post, isNewPost bool, isEditPost bool, includePriority bool) *model.Post
        + PreparePostListForClient(c request.CTX, originalList *model.PostList) *model.PostList
        + ProcessSlackText(text string) string
        + Publish(message *model.WebSocketEvent) 
        + PublishUserTyping(userID string, channelID string, parentId string) *model.AppError
        + PurgeBleveIndexes(c request.CTX) *model.AppError
        + PurgeElasticsearchIndexes(c request.CTX) *model.AppError
        + QueryLogs(rctx request.CTX, page int, perPage int, logFilter *model.LogFilter) (<font color=blue>map</font>[string][]string, *model.AppError)
        + ReadFile(path string) ([]byte, *model.AppError)
        + RecycleDatabaseConnection(rctx request.CTX) 
        + RegenCommandToken(cmd *model.Command) (*model.Command, *model.AppError)
        + RegenOutgoingWebhookToken(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + RegenerateOAuthAppSecret(app *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + RegenerateTeamInviteId(teamID string) (*model.Team, *model.AppError)
        + RegisterPluginCommand(pluginID string, command *model.Command) error
        + RegisterPluginForSharedChannels(opts model.RegisterPluginOpts) (string, error)
        + ReloadConfig() error
        + RemoveAllDeactivatedMembersFromChannel(c request.CTX, channel *model.Channel) *model.AppError
        + RemoveChannelsFromRetentionPolicy(policyID string, channelIDs []string) *model.AppError
        + RemoveCustomStatus(c request.CTX, userID string) *model.AppError
        + RemoveDirectory(path string) *model.AppError
        + RemoveExportFile(path string) *model.AppError
        + RemoveFile(path string) *model.AppError
        + RemoveLdapPrivateCertificate() *model.AppError
        + RemoveLdapPublicCertificate() *model.AppError
        + RemoveNotifications(c request.CTX, post *model.Post, channel *model.Channel) error
        + RemoveRecentCustomStatus(c request.CTX, userID string, status *model.CustomStatus) *model.AppError
        + RemoveSamlIdpCertificate() *model.AppError
        + RemoveSamlPrivateCertificate() *model.AppError
        + RemoveSamlPublicCertificate() *model.AppError
        + RemoveTeamIcon(teamID string) *model.AppError
        + RemoveTeamsFromRetentionPolicy(policyID string, teamIDs []string) *model.AppError
        + RemoveUserFromChannel(c request.CTX, userIDToRemove string, removerUserId string, channel *model.Channel) *model.AppError
        + RemoveUserFromTeam(c request.CTX, teamID string, userID string, requestorId string) *model.AppError
        + RemoveUsersFromChannelNotMemberOfTeam(c request.CTX, remover *model.User, channel *model.Channel, team *model.Team) *model.AppError
        + ResetPasswordFromToken(c request.CTX, userSuppliedTokenString string, newPassword string) *model.AppError
        + ResetPermissionsSystem() *model.AppError
        + ResetSamlAuthDataToEmail(includeDeleted bool, dryRun bool, userIDs []string) (int, *model.AppError)
        + RestoreChannel(c request.CTX, channel *model.Channel, userID string) (*model.Channel, *model.AppError)
        + RestoreGroup(groupID string) (*model.Group, *model.AppError)
        + RestoreTeam(teamID string) *model.AppError
        + RestrictUsersGetByPermissions(c request.CTX, userID string, options *model.UserGetOptions) (*model.UserGetOptions, *model.AppError)
        + RestrictUsersSearchByPermissions(c request.CTX, userID string, options *model.UserSearchOptions) (*model.UserSearchOptions, *model.AppError)
        + ReturnSessionToPool(session *model.Session) 
        + RevokeAccessToken(c request.CTX, token string) *model.AppError
        + RevokeAllSessions(c request.CTX, userID string) *model.AppError
        + RevokeSession(c request.CTX, session *model.Session) *model.AppError
        + RevokeSessionById(c request.CTX, sessionID string) *model.AppError
        + RevokeSessionsForDeviceId(c request.CTX, userID string, deviceID string, currentSessionId string) *model.AppError
        + RevokeUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + RolesGrantPermission(roleNames []string, permissionId string) bool
        + Saml() einterfaces.SamlInterface
        + SanitizePostListMetadataForUser(c request.CTX, postList *model.PostList, userID string) (*model.PostList, *model.AppError)
        + SanitizePostMetadataForUser(c request.CTX, post *model.Post, userID string) (*model.Post, *model.AppError)
        + SanitizeProfile(user *model.User, asAdmin bool) 
        + SanitizeTeam(session model.Session, team *model.Team) *model.Team
        + SanitizeTeams(session model.Session, teams []*model.Team) []*model.Team
        + SaveAcknowledgementForPost(c request.CTX, postID string, userID string) (*model.PostAcknowledgement, *model.AppError)
        + SaveAdminNotification(userId string, notifyData *model.NotifyAdminToUpgradeRequest) *model.AppError
        + SaveAdminNotifyData(data *model.NotifyAdminData) (*model.NotifyAdminData, *model.AppError)
        + SaveBrandImage(rctx request.CTX, imageData *multipart.FileHeader) *model.AppError
        + SaveComplianceReport(rctx request.CTX, job *model.Compliance) (*model.Compliance, *model.AppError)
        + SaveReactionForPost(c request.CTX, reaction *model.Reaction) (*model.Reaction, *model.AppError)
        + SaveReportChunk(format string, prefix string, count int, reportData []model.ReportableObject) *model.AppError
        + SaveSharedChannelRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + SaveUserTermsOfService(userID string, termsOfServiceId string, accepted bool) *model.AppError
        + SchemesIterator(scope string, batchSize int) <font color=blue>func</font>() []*model.Scheme
        + SearchArchivedChannels(c request.CTX, teamID string, term string, userID string) (model.ChannelList, *model.AppError)
        + SearchChannels(c request.CTX, teamID string, term string) (model.ChannelList, *model.AppError)
        + SearchChannelsForUser(c request.CTX, userID string, teamID string, term string) (model.ChannelList, *model.AppError)
        + SearchChannelsUserNotIn(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + SearchEmoji(c request.CTX, name string, prefixOnly bool, limit int) ([]*model.Emoji, *model.AppError)
        + SearchEngine() *searchengine.Broker
        + SearchFilesInTeamForUser(c request.CTX, terms string, userId string, teamId string, isOrSearch bool, includeDeletedChannels bool, timeZoneOffset int, page int, perPage int) (*model.FileInfoList, *model.AppError)
        + SearchGroupChannels(c request.CTX, userID string, term string) (model.ChannelList, *model.AppError)
        + SearchPostsForUser(c request.CTX, terms string, userID string, teamID string, isOrSearch bool, includeDeletedChannels bool, timeZoneOffset int, page int, perPage int) (*model.PostSearchResults, *model.AppError)
        + SearchPostsInTeam(teamID string, paramsList []*model.SearchParams) (*model.PostList, *model.AppError)
        + SearchPrivateTeams(searchOpts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + SearchPublicTeams(searchOpts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + SearchUserAccessTokens(term string) ([]*model.UserAccessToken, *model.AppError)
        + SearchUsers(rctx request.CTX, props *model.UserSearch, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInChannel(channelID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInTeam(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInChannel(teamID string, channelID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInTeam(notInTeamId string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersWithoutTeam(term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SendAckToPushProxy(ack *model.PushNotificationAck) error
        + SendAutoResponse(rctx request.CTX, channel *model.Channel, receiver *model.User, post *model.Post) (bool, *model.AppError)
        + SendAutoResponseIfNecessary(rctx request.CTX, channel *model.Channel, sender *model.User, post *model.Post) (bool, *model.AppError)
        + SendDelinquencyEmail(emailToSend model.DelinquencyEmail) *model.AppError
        + SendEmailVerification(user *model.User, newEmail string, redirect string) *model.AppError
        + SendEphemeralPost(c request.CTX, userID string, post *model.Post) *model.Post
        + SendIPFiltersChangedEmail(c request.CTX, userID string) error
        + SendNotifications(c request.CTX, post *model.Post, team *model.Team, channel *model.Channel, sender *model.User, parentPostList *model.PostList, setOnline bool) ([]string, error)
        + SendNotifyAdminPosts(c request.CTX, workspaceName string, currentSKU string, trial bool) *model.AppError
        + SendPasswordReset(email string, siteURL string) (bool, *model.AppError)
        + SendPaymentFailedEmail(failedPayment *model.FailedPayment) *model.AppError
        + SendPersistentNotifications() error
        + SendReportToUser(rctx request.CTX, job *model.Job, format string) *model.AppError
        + SendTestPushNotification(deviceID string) string
        + SendUpgradeConfirmationEmail(isYearly bool) *model.AppError
        + ServeInterPluginRequest(w http.ResponseWriter, r *http.Request, sourcePluginId string, destinationPluginId string) 
        + SessionHasPermissionTo(session model.Session, permission *model.Permission) bool
        + SessionHasPermissionToAny(session model.Session, permissions []*model.Permission) bool
        + SessionHasPermissionToCategory(c request.CTX, session model.Session, userID string, teamID string, categoryId string) bool
        + SessionHasPermissionToChannel(c request.CTX, session model.Session, channelID string, permission *model.Permission) bool
        + SessionHasPermissionToChannelByPost(session model.Session, postID string, permission *model.Permission) bool
        + SessionHasPermissionToCreateJob(session model.Session, job *model.Job) (bool, *model.Permission)
        + SessionHasPermissionToGroup(session model.Session, groupID string, permission *model.Permission) bool
        + SessionHasPermissionToReadJob(session model.Session, jobType string) (bool, *model.Permission)
        + SessionHasPermissionToTeam(session model.Session, teamID string, permission *model.Permission) bool
        + SessionHasPermissionToUser(session model.Session, userID string) bool
        + SessionHasPermissionToUserOrBot(session model.Session, userID string) bool
        + SetActiveChannel(c request.CTX, userID string, channelID string) *model.AppError
        + SetAutoResponderStatus(rctx request.CTX, user *model.User, oldNotifyProps model.StringMap) 
        + SetChannels(ch *Channels) 
        + SetCustomStatus(c request.CTX, userID string, cs *model.CustomStatus) *model.AppError
        + SetDefaultProfileImage(c request.CTX, user *model.User) *model.AppError
        + SetFileSearchableContent(rctx request.CTX, fileID string, data string) *model.AppError
        + SetPhase2PermissionsMigrationStatus(isComplete bool) error
        + SetPluginKey(pluginID string, key string, value []byte) *model.AppError
        + SetPluginKeyWithExpiry(pluginID string, key string, value []byte, expireInSeconds int64) *model.AppError
        + SetPluginKeyWithOptions(pluginID string, key string, value []byte, options model.PluginKVSetOptions) (bool, *model.AppError)
        + SetPostReminder(postID string, userID string, targetTime int64) *model.AppError
        + SetProfileImage(c request.CTX, userID string, imageData *multipart.FileHeader) *model.AppError
        + SetProfileImageFromFile(c request.CTX, userID string, file io.Reader) *model.AppError
        + SetProfileImageFromMultiPartFile(c request.CTX, userID string, file multipart.File) *model.AppError
        + SetRemoteClusterLastPingAt(remoteClusterId string) *model.AppError
        + SetSamlIdpCertificateFromMetadata(data []byte) *model.AppError
        + SetSearchEngine(se *searchengine.Broker) 
        + SetServer(srv *Server) 
        + SetStatusAwayIfNeeded(userID string, manual bool) 
        + SetStatusDoNotDisturb(userID string) 
        + SetStatusOffline(userID string, manual bool) 
        + SetStatusOnline(userID string, manual bool) 
        + SetStatusOutOfOffice(userID string) 
        + SetTeamIcon(teamID string, imageData *multipart.FileHeader) *model.AppError
        + SetTeamIconFromFile(team *model.Team, file io.Reader) *model.AppError
        + SetTeamIconFromMultiPartFile(teamID string, file multipart.File) *model.AppError
        + ShareChannel(c request.CTX, sc *model.SharedChannel) (*model.SharedChannel, error)
        + ShouldSendPushNotification(user *model.User, channelNotifyProps model.StringMap, wasMentioned bool, status *model.Status, post *model.Post, isGM bool) bool
        + SlackImport(c request.CTX, fileData multipart.File, fileSize int64, teamID string) (*model.AppError, *bytes.Buffer)
        + SoftDeleteTeam(teamID string) *model.AppError
        + Srv() *Server
        + StartUsersBatchExport(rctx request.CTX, dateRange string, startAt int64, endAt int64) *model.AppError
        + SubmitInteractiveDialog(c request.CTX, request model.SubmitDialogRequest) (*model.SubmitDialogResponse, *model.AppError)
        + SwitchEmailToLdap(c request.CTX, email string, password string, code string, ldapLoginId string, ldapPassword string) (string, *model.AppError)
        + SwitchEmailToOAuth(c request.CTX, w http.ResponseWriter, r *http.Request, email string, password string, code string, service string) (string, *model.AppError)
        + SwitchLdapToEmail(c request.CTX, ldapPassword string, code string, email string, newPassword string) (string, *model.AppError)
        + SwitchOAuthToEmail(c request.CTX, email string, password string, requesterId string) (string, *model.AppError)
        + TeamMembersToRemove(teamID *string) ([]*model.TeamMember, *model.AppError)
        + TelemetryId() string
        + TestElasticsearch(rctx request.CTX, cfg *model.Config) *model.AppError
        + TestEmail(rctx request.CTX, userID string, cfg *model.Config) *model.AppError
        + TestFileStoreConnection() *model.AppError
        + TestFileStoreConnectionWithConfig(cfg *model.FileSettings) *model.AppError
        + TestLdap(rctx request.CTX) *model.AppError
        + TestSiteURL(rctx request.CTX, siteURL string) *model.AppError
        + Timezones() *timezones.Timezones
        + ToggleMuteChannel(c request.CTX, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + TotalWebsocketConnections() int
        + TriggerWebhook(c request.CTX, payload *model.OutgoingWebhookPayload, hook *model.OutgoingWebhook, post *model.Post, channel *model.Channel) 
        + UninviteRemoteFromChannel(channelID string, remoteID string) error
        + UnregisterPluginCommand(pluginID string, teamID string, trigger string) 
        + UnregisterPluginForSharedChannels(pluginID string) error
        + UnshareChannel(channelID string) (bool, error)
        + UpdateActive(c request.CTX, user *model.User, active bool) (*model.User, *model.AppError)
        + UpdateChannelMemberNotifyProps(c request.CTX, data <font color=blue>map</font>[string]string, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + UpdateChannelMemberRoles(c request.CTX, channelID string, userID string, newRoles string) (*model.ChannelMember, *model.AppError)
        + UpdateChannelMemberSchemeRoles(c request.CTX, channelID string, userID string, isSchemeGuest bool, isSchemeUser bool, isSchemeAdmin bool) (*model.ChannelMember, *model.AppError)
        + UpdateChannelPrivacy(c request.CTX, oldChannel *model.Channel, user *model.User) (*model.Channel, *model.AppError)
        + UpdateCommand(oldCmd *model.Command, updatedCmd *model.Command) (*model.Command, *model.AppError)
        + UpdateConfig(f <font color=blue>func</font>(*model.Config) ) 
        + UpdateDefaultProfileImage(c request.CTX, user *model.User) *model.AppError
        + UpdateEphemeralPost(c request.CTX, userID string, post *model.Post) *model.Post
        + UpdateExpiredDNDStatuses() ([]*model.Status, error)
        + UpdateGroup(group *model.Group) (*model.Group, *model.AppError)
        + UpdateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, *model.AppError)
        + UpdateHashedPassword(user *model.User, newHashedPassword string) *model.AppError
        + UpdateHashedPasswordByUserId(userID string, newHashedPassword string) *model.AppError
        + UpdateIncomingWebhook(oldHook *model.IncomingWebhook, updatedHook *model.IncomingWebhook) (*model.IncomingWebhook, *model.AppError)
        + UpdateMfa(c request.CTX, activate bool, userID string, token string) *model.AppError
        + UpdateMobileAppBadge(userID string) 
        + UpdateOAuthApp(oldApp *model.OAuthApp, updatedApp *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + UpdateOAuthUserAttrs(c request.CTX, userData io.Reader, user *model.User, provider einterfaces.OAuthProvider, service string, tokenUser *model.User) *model.AppError
        + UpdateOutgoingWebhook(c request.CTX, oldHook *model.OutgoingWebhook, updatedHook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + UpdatePassword(rctx request.CTX, user *model.User, newPassword string) *model.AppError
        + UpdatePasswordAsUser(c request.CTX, userID string, currentPassword string, newPassword string) *model.AppError
        + UpdatePasswordByUserIdSendEmail(c request.CTX, userID string, newPassword string, method string) *model.AppError
        + UpdatePasswordSendEmail(c request.CTX, user *model.User, newPassword string, method string) *model.AppError
        + UpdatePost(c request.CTX, receivedUpdatedPost *model.Post, safeUpdate bool) (*model.Post, *model.AppError)
        + UpdatePreferences(c request.CTX, userID string, preferences model.Preferences) *model.AppError
        + UpdateRemoteCluster(rc *model.RemoteCluster) (*model.RemoteCluster, *model.AppError)
        + UpdateRemoteClusterTopics(remoteClusterId string, topics string) (*model.RemoteCluster, *model.AppError)
        + UpdateRole(role *model.Role) (*model.Role, *model.AppError)
        + UpdateScheme(scheme *model.Scheme) (*model.Scheme, *model.AppError)
        + UpdateSharedChannel(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UpdateSharedChannelRemoteCursor(id string, cursor model.GetPostsSinceForSyncCursor) error
        + UpdateSidebarCategories(c request.CTX, userID string, teamID string, categories []*model.SidebarCategoryWithChannels) ([]*model.SidebarCategoryWithChannels, *model.AppError)
        + UpdateSidebarCategoryOrder(c request.CTX, userID string, teamID string, categoryOrder []string) *model.AppError
        + UpdateTeam(team *model.Team) (*model.Team, *model.AppError)
        + UpdateTeamMemberRoles(c request.CTX, teamID string, userID string, newRoles string) (*model.TeamMember, *model.AppError)
        + UpdateTeamMemberSchemeRoles(c request.CTX, teamID string, userID string, isSchemeGuest bool, isSchemeUser bool, isSchemeAdmin bool) (*model.TeamMember, *model.AppError)
        + UpdateTeamPrivacy(teamID string, teamType string, allowOpenInvite bool) *model.AppError
        + UpdateTeamScheme(team *model.Team) (*model.Team, *model.AppError)
        + UpdateThreadFollowForUser(userID string, teamID string, threadID string, state bool) *model.AppError
        + UpdateThreadFollowForUserFromChannelAdd(c request.CTX, userID string, teamID string, threadID string) *model.AppError
        + UpdateThreadReadForUser(c request.CTX, currentSessionId string, userID string, teamID string, threadID string, timestamp int64) (*model.ThreadResponse, *model.AppError)
        + UpdateThreadReadForUserByPost(c request.CTX, currentSessionId string, userID string, teamID string, threadID string, postID string) (*model.ThreadResponse, *model.AppError)
        + UpdateThreadsReadForUser(userID string, teamID string) *model.AppError
        + UpdateUser(c request.CTX, user *model.User, sendNotifications bool) (*model.User, *model.AppError)
        + UpdateUserActive(c request.CTX, userID string, active bool) *model.AppError
        + UpdateUserAsUser(c request.CTX, user *model.User, asAdmin bool) (*model.User, *model.AppError)
        + UpdateUserAuth(c request.CTX, userID string, userAuth *model.UserAuth) (*model.UserAuth, *model.AppError)
        + UpdateUserRoles(c request.CTX, userID string, newRoles string, sendWebSocketEvent bool) (*model.User, *model.AppError)
        + UpdateUserRolesWithUser(c request.CTX, user *model.User, newRoles string, sendWebSocketEvent bool) (*model.User, *model.AppError)
        + UploadData(c request.CTX, us *model.UploadSession, rd io.Reader) (*model.FileInfo, *model.AppError)
        + UploadFileForUserAndTeam(c request.CTX, data []byte, channelID string, filename string, rawUserId string, rawTeamId string) (*model.FileInfo, *model.AppError)
        + UpsertDraft(c request.CTX, draft *model.Draft, connectionID string) (*model.Draft, *model.AppError)
        + UpsertGroupMember(groupID string, userID string) (*model.GroupMember, *model.AppError)
        + UpsertGroupMembers(groupID string, userIDs []string) ([]*model.GroupMember, *model.AppError)
        + UpsertGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, *model.AppError)
        + UserAlreadyNotifiedOnRequiredFeature(user string, feature model.MattermostFeature) bool
        + UserCanSeeOtherUser(c request.CTX, userID string, otherUserId string) (bool, *model.AppError)
        + UserIsFirstAdmin(user *model.User) bool
        + ValidateDesktopToken(token string, expiryTime int64) (*model.User, *model.AppError)
        + VerifyEmailFromToken(c request.CTX, userSuppliedTokenString string) *model.AppError
        + VerifyUserEmail(userID string, email string) *model.AppError
        + ViewChannel(c request.CTX, view *model.ChannelView, userID string, currentSessionId string, collapsedThreadsSupported bool) (<font color=blue>map</font>[string]int64, *model.AppError)
        + WriteExportFile(fr io.Reader, path string) (int64, *model.AppError)
        + WriteExportFileContext(ctx context.Context, fr io.Reader, path string) (int64, *model.AppError)
        + WriteFile(fr io.Reader, path string) (int64, *model.AppError)
        + WriteFileContext(ctx context.Context, fr io.Reader, path string) (int64, *model.AppError)

    }
    interface AutocompleteDynamicArgProvider  {
        + GetAutoCompleteListItems(c request.CTX, a *App, commandArgs *model.CommandArgs, arg *model.AutocompleteArg, parsed string, toBeParsed string) ([]model.AutocompleteListItem, error)

    }
    class Busy << (S,Aquamarine) >> {
        + IsBusy() bool
        + Set(dur time.Duration) 
        + Clear() 
        + Expires() time.Time
        + ClusterEventChanged(sbs *model.ServerBusyState) 
        + ToJSON() ([]byte, error)

    }
    class CRTNotifiers << (S,Aquamarine) >> {
        + Desktop model.StringArray
        + Email model.StringArray
        + Push model.StringArray

    }
    class ChannelMemberOpts << (S,Aquamarine) >> {
        + UserRequestorID string
        + PostRootID string
        + SkipTeamMemberIntegrityCheck bool

    }
    class Channels << (S,Aquamarine) >> {
        + AccountMigration einterfaces.AccountMigrationInterface
        + Compliance einterfaces.ComplianceInterface
        + DataRetention einterfaces.DataRetentionInterface
        + MessageExport einterfaces.MessageExportInterface
        + Saml einterfaces.SamlInterface
        + Notification einterfaces.NotificationInterface
        + Ldap einterfaces.LdapInterface

        + Start() error
        + Stop() error
        + AddConfigListener(listener <font color=blue>func</font>(*model.Config, *model.Config) ) string
        + RemoveConfigListener(id string) 
        + RunMultiHook(hookRunnerFunc <font color=blue>func</font>(plugin.Hooks) bool, hookId int) 
        + HooksForPlugin(id string) (plugin.Hooks, error)
        + AsymmetricSigningKey() *ecdsa.PrivateKey
        + PostActionCookieSecret() []byte
        + License() *model.License
        + RequestTrialLicenseWithExtraFields(requesterID string, trialRequest *model.TrialLicenseRequest) *model.AppError
        + RequestTrialLicense(requesterID string, users int, termsAccepted bool, receiveEmailsAccepted bool) *model.AppError
        + GetPluginsEnvironment() *plugin.Environment
        + SetPluginsEnvironment(pluginsEnvironment *plugin.Environment) 
        + ShutDownPlugins() 
        + IsPluginActive(pluginName string) (bool, error)
        + InstallMarketplacePlugin(request *model.InstallMarketplacePluginRequest) (*model.Manifest, *model.AppError)
        + RemovePlugin(id string) *model.AppError
        + ServePluginRequest(w http.ResponseWriter, r *http.Request) 
        + ServePluginPublicRequest(w http.ResponseWriter, r *http.Request) 
        + GetPluginStatus(id string) (*model.PluginStatus, *model.AppError)
        + GetPluginStatuses() (model.PluginStatuses, *model.AppError)
        + ClientConfigHash() string
        + Publish(message *model.WebSocketEvent) 

    }
    interface CommandProvider  {
        + GetTrigger() string
        + GetCommand(a *App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class DriverImpl << (S,Aquamarine) >> {
        + Conn(isMaster bool) (string, error)
        + ConnPing(connID string) error
        + ConnQuery(connID string, q string, args []driver.NamedValue) (string, error)
        + ConnExec(connID string, q string, args []driver.NamedValue) (plugin.ResultContainer, error)
        + ConnClose(connID string) error
        + Tx(connID string, opts driver.TxOptions) (string, error)
        + TxCommit(txID string) error
        + TxRollback(txID string) error
        + Stmt(connID string, q string) (string, error)
        + StmtClose(stID string) error
        + StmtNumInput(stID string) int
        + StmtQuery(stID string, args []driver.NamedValue) (string, error)
        + StmtExec(stID string, args []driver.NamedValue) (plugin.ResultContainer, error)
        + RowsColumns(rowsID string) []string
        + RowsClose(rowsID string) error
        + RowsNext(rowsID string, dest []driver.Value) error
        + RowsHasNextResultSet(rowsID string) bool
        + RowsNextResultSet(rowsID string) error
        + RowsColumnTypeDatabaseTypeName(rowsID string, index int) string
        + RowsColumnTypePrecisionScale(rowsID string, index int) (int64, int64, bool)

    }
    class JWTClaims << (S,Aquamarine) >> {
        + LicenseID string
        + ActiveUsers int64

    }
    class LocalResponseWriter << (S,Aquamarine) >> {
        + Header() http.Header
        + Write(bytes []byte) (int, error)
        + WriteHeader(statusCode int) 

    }
    class MailToLinkContent << (S,Aquamarine) >> {
        + MetricId string
        + MailRecipient string
        + MailCC string
        + MailSubject string
        + MailBody string

        + ToJSON() string

    }
    class MentionKeywords << (S,Aquamarine) >> {
        + AddUser(profile *model.User, channelNotifyProps <font color=blue>map</font>[string]string, status *model.Status, allowChannelMentions bool) MentionKeywords
        + AddUserKeyword(userID string, keyword string) MentionKeywords
        + AddGroup(group *model.Group) MentionKeywords
        + AddGroupsMap(groups <font color=blue>map</font>[string]*model.Group) MentionKeywords

    }
    interface MentionParser  {
        + ProcessText(text string) 
        + Results() *MentionResults

    }
    class MentionResults << (S,Aquamarine) >> {
        + Mentions <font color=blue>map</font>[string]MentionType
        + GroupMentions <font color=blue>map</font>[string]MentionType
        + OtherPotentialMentions []string
        + HereMentioned bool
        + AllMentioned bool
        + ChannelMentioned bool

    }
    class MentionableID << (S,Aquamarine) >> {
        + AsUserID() (string, bool)
        + AsGroupID() (string, bool)

    }
    class PluginAPI << (S,Aquamarine) >> {
        + LoadPluginConfiguration(dest any) error
        + RegisterCommand(command *model.Command) error
        + UnregisterCommand(teamID string, trigger string) error
        + ExecuteSlashCommand(commandArgs *model.CommandArgs) (*model.CommandResponse, error)
        + GetConfig() *model.Config
        + GetUnsanitizedConfig() *model.Config
        + SaveConfig(config *model.Config) *model.AppError
        + GetPluginConfig() <font color=blue>map</font>[string]any
        + SavePluginConfig(pluginConfig <font color=blue>map</font>[string]any) *model.AppError
        + GetBundlePath() (string, error)
        + GetLicense() *model.License
        + IsEnterpriseReady() bool
        + GetServerVersion() string
        + GetSystemInstallDate() (int64, *model.AppError)
        + GetDiagnosticId() string
        + GetTelemetryId() string
        + CreateTeam(team *model.Team) (*model.Team, *model.AppError)
        + DeleteTeam(teamID string) *model.AppError
        + GetTeams() ([]*model.Team, *model.AppError)
        + GetTeam(teamID string) (*model.Team, *model.AppError)
        + SearchTeams(term string) ([]*model.Team, *model.AppError)
        + GetTeamByName(name string) (*model.Team, *model.AppError)
        + GetTeamsUnreadForUser(userID string) ([]*model.TeamUnread, *model.AppError)
        + UpdateTeam(team *model.Team) (*model.Team, *model.AppError)
        + GetTeamsForUser(userID string) ([]*model.Team, *model.AppError)
        + CreateTeamMember(teamID string, userID string) (*model.TeamMember, *model.AppError)
        + CreateTeamMembers(teamID string, userIDs []string, requestorId string) ([]*model.TeamMember, *model.AppError)
        + CreateTeamMembersGracefully(teamID string, userIDs []string, requestorId string) ([]*model.TeamMemberWithError, *model.AppError)
        + DeleteTeamMember(teamID string, userID string, requestorId string) *model.AppError
        + GetTeamMembers(teamID string, page int, perPage int) ([]*model.TeamMember, *model.AppError)
        + GetTeamMember(teamID string, userID string) (*model.TeamMember, *model.AppError)
        + GetTeamMembersForUser(userID string, page int, perPage int) ([]*model.TeamMember, *model.AppError)
        + UpdateTeamMemberRoles(teamID string, userID string, newRoles string) (*model.TeamMember, *model.AppError)
        + GetTeamStats(teamID string) (*model.TeamStats, *model.AppError)
        + CreateUser(user *model.User) (*model.User, *model.AppError)
        + DeleteUser(userID string) *model.AppError
        + GetUsers(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUser(userID string) (*model.User, *model.AppError)
        + GetUserByEmail(email string) (*model.User, *model.AppError)
        + GetUserByUsername(name string) (*model.User, *model.AppError)
        + GetUserByRemoteID(remoteID string) (*model.User, *model.AppError)
        + GetUsersByUsernames(usernames []string) ([]*model.User, *model.AppError)
        + GetUsersInTeam(teamID string, page int, perPage int) ([]*model.User, *model.AppError)
        + GetPreferenceForUser(userID string, category string, name string) (model.Preference, *model.AppError)
        + GetPreferencesForUser(userID string) ([]model.Preference, *model.AppError)
        + UpdatePreferencesForUser(userID string, preferences []model.Preference) *model.AppError
        + DeletePreferencesForUser(userID string, preferences []model.Preference) *model.AppError
        + GetSession(sessionID string) (*model.Session, *model.AppError)
        + CreateSession(session *model.Session) (*model.Session, *model.AppError)
        + ExtendSessionExpiry(sessionID string, expiresAt int64) *model.AppError
        + RevokeSession(sessionID string) *model.AppError
        + CreateUserAccessToken(token *model.UserAccessToken) (*model.UserAccessToken, *model.AppError)
        + RevokeUserAccessToken(tokenID string) *model.AppError
        + UpdateUser(user *model.User) (*model.User, *model.AppError)
        + UpdateUserAuth(userID string, userAuth *model.UserAuth) (*model.UserAuth, *model.AppError)
        + UpdateUserActive(userID string, active bool) *model.AppError
        + GetUserStatus(userID string) (*model.Status, *model.AppError)
        + GetUserStatusesByIds(userIDs []string) ([]*model.Status, *model.AppError)
        + UpdateUserStatus(userID string, status string) (*model.Status, *model.AppError)
        + SetUserStatusTimedDND(userID string, endTime int64) (*model.Status, *model.AppError)
        + UpdateUserCustomStatus(userID string, customStatus *model.CustomStatus) *model.AppError
        + RemoveUserCustomStatus(userID string) *model.AppError
        + GetUserCustomStatus(userID string) (*model.CustomStatus, *model.AppError)
        + GetUsersInChannel(channelID string, sortBy string, page int, perPage int) ([]*model.User, *model.AppError)
        + GetLDAPUserAttributes(userID string, attributes []string) (<font color=blue>map</font>[string]string, *model.AppError)
        + CreateChannel(channel *model.Channel) (*model.Channel, *model.AppError)
        + DeleteChannel(channelID string) *model.AppError
        + GetPublicChannelsForTeam(teamID string, page int, perPage int) ([]*model.Channel, *model.AppError)
        + GetChannel(channelID string) (*model.Channel, *model.AppError)
        + GetChannelByName(teamID string, name string, includeDeleted bool) (*model.Channel, *model.AppError)
        + GetChannelByNameForTeamName(teamName string, channelName string, includeDeleted bool) (*model.Channel, *model.AppError)
        + GetChannelsForTeamForUser(teamID string, userID string, includeDeleted bool) ([]*model.Channel, *model.AppError)
        + GetChannelStats(channelID string) (*model.ChannelStats, *model.AppError)
        + GetDirectChannel(userID1 string, userID2 string) (*model.Channel, *model.AppError)
        + GetGroupChannel(userIDs []string) (*model.Channel, *model.AppError)
        + UpdateChannel(channel *model.Channel) (*model.Channel, *model.AppError)
        + SearchChannels(teamID string, term string) ([]*model.Channel, *model.AppError)
        + CreateChannelSidebarCategory(userID string, teamID string, newCategory *model.SidebarCategoryWithChannels) (*model.SidebarCategoryWithChannels, *model.AppError)
        + GetChannelSidebarCategories(userID string, teamID string) (*model.OrderedSidebarCategories, *model.AppError)
        + UpdateChannelSidebarCategories(userID string, teamID string, categories []*model.SidebarCategoryWithChannels) ([]*model.SidebarCategoryWithChannels, *model.AppError)
        + SearchUsers(search *model.UserSearch) ([]*model.User, *model.AppError)
        + SearchPostsInTeam(teamID string, paramsList []*model.SearchParams) ([]*model.Post, *model.AppError)
        + SearchPostsInTeamForUser(teamID string, userID string, searchParams model.SearchParameter) (*model.PostSearchResults, *model.AppError)
        + AddChannelMember(channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + AddUserToChannel(channelID string, userID string, asUserID string) (*model.ChannelMember, *model.AppError)
        + GetChannelMember(channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + GetChannelMembers(channelID string, page int, perPage int) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersByIds(channelID string, userIDs []string) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersForUser(_ string, userID string, page int, perPage int) ([]*model.ChannelMember, *model.AppError)
        + UpdateChannelMemberRoles(channelID string, userID string, newRoles string) (*model.ChannelMember, *model.AppError)
        + UpdateChannelMemberNotifications(channelID string, userID string, notifications <font color=blue>map</font>[string]string) (*model.ChannelMember, *model.AppError)
        + PatchChannelMembersNotifications(members []*model.ChannelMemberIdentifier, notifications <font color=blue>map</font>[string]string) *model.AppError
        + DeleteChannelMember(channelID string, userID string) *model.AppError
        + GetGroup(groupId string) (*model.Group, *model.AppError)
        + GetGroupByName(name string) (*model.Group, *model.AppError)
        + GetGroupMemberUsers(groupID string, page int, perPage int) ([]*model.User, *model.AppError)
        + GetGroupsBySource(groupSource model.GroupSource) ([]*model.Group, *model.AppError)
        + GetGroupsForUser(userID string) ([]*model.Group, *model.AppError)
        + CreatePost(post *model.Post) (*model.Post, *model.AppError)
        + AddReaction(reaction *model.Reaction) (*model.Reaction, *model.AppError)
        + RemoveReaction(reaction *model.Reaction) *model.AppError
        + GetReactions(postID string) ([]*model.Reaction, *model.AppError)
        + SendEphemeralPost(userID string, post *model.Post) *model.Post
        + UpdateEphemeralPost(userID string, post *model.Post) *model.Post
        + DeleteEphemeralPost(userID string, postID string) 
        + DeletePost(postID string) *model.AppError
        + GetPostThread(postID string) (*model.PostList, *model.AppError)
        + GetPost(postID string) (*model.Post, *model.AppError)
        + GetPostsSince(channelID string, time int64) (*model.PostList, *model.AppError)
        + GetPostsAfter(channelID string, postID string, page int, perPage int) (*model.PostList, *model.AppError)
        + GetPostsBefore(channelID string, postID string, page int, perPage int) (*model.PostList, *model.AppError)
        + GetPostsForChannel(channelID string, page int, perPage int) (*model.PostList, *model.AppError)
        + UpdatePost(post *model.Post) (*model.Post, *model.AppError)
        + GetProfileImage(userID string) ([]byte, *model.AppError)
        + SetProfileImage(userID string, data []byte) *model.AppError
        + GetEmojiList(sortBy string, page int, perPage int) ([]*model.Emoji, *model.AppError)
        + GetEmojiByName(name string) (*model.Emoji, *model.AppError)
        + GetEmoji(emojiId string) (*model.Emoji, *model.AppError)
        + CopyFileInfos(userID string, fileIDs []string) ([]string, *model.AppError)
        + GetFileInfo(fileID string) (*model.FileInfo, *model.AppError)
        + SetFileSearchableContent(fileID string, content string) *model.AppError
        + GetFileInfos(page int, perPage int, opt *model.GetFileInfosOptions) ([]*model.FileInfo, *model.AppError)
        + GetFileLink(fileID string) (string, *model.AppError)
        + ReadFile(path string) ([]byte, *model.AppError)
        + GetFile(fileID string) ([]byte, *model.AppError)
        + UploadFile(data []byte, channelID string, filename string) (*model.FileInfo, *model.AppError)
        + GetEmojiImage(emojiId string) ([]byte, string, *model.AppError)
        + GetTeamIcon(teamID string) ([]byte, *model.AppError)
        + SetTeamIcon(teamID string, data []byte) *model.AppError
        + OpenInteractiveDialog(dialog model.OpenDialogRequest) *model.AppError
        + RemoveTeamIcon(teamID string) *model.AppError
        + SendMail(to string, subject string, htmlBody string) *model.AppError
        + GetPlugins() ([]*model.Manifest, *model.AppError)
        + EnablePlugin(id string) *model.AppError
        + DisablePlugin(id string) *model.AppError
        + RemovePlugin(id string) *model.AppError
        + GetPluginStatus(id string) (*model.PluginStatus, *model.AppError)
        + InstallPlugin(file io.Reader, replace bool) (*model.Manifest, *model.AppError)
        + KVSetWithOptions(key string, value []byte, options model.PluginKVSetOptions) (bool, *model.AppError)
        + KVSet(key string, value []byte) *model.AppError
        + KVCompareAndSet(key string, oldValue []byte, newValue []byte) (bool, *model.AppError)
        + KVCompareAndDelete(key string, oldValue []byte) (bool, *model.AppError)
        + KVSetWithExpiry(key string, value []byte, expireInSeconds int64) *model.AppError
        + KVGet(key string) ([]byte, *model.AppError)
        + KVDelete(key string) *model.AppError
        + KVDeleteAll() *model.AppError
        + KVList(page int, perPage int) ([]string, *model.AppError)
        + PublishWebSocketEvent(event string, payload <font color=blue>map</font>[string]any, broadcast *model.WebsocketBroadcast) 
        + HasPermissionTo(userID string, permission *model.Permission) bool
        + HasPermissionToTeam(userID string, teamID string, permission *model.Permission) bool
        + HasPermissionToChannel(userID string, channelID string, permission *model.Permission) bool
        + RolesGrantPermission(roleNames []string, permissionId string) bool
        + LogDebug(msg string, keyValuePairs ...any) 
        + LogInfo(msg string, keyValuePairs ...any) 
        + LogError(msg string, keyValuePairs ...any) 
        + LogWarn(msg string, keyValuePairs ...any) 
        + CreateBot(bot *model.Bot) (*model.Bot, *model.AppError)
        + PatchBot(userID string, botPatch *model.BotPatch) (*model.Bot, *model.AppError)
        + GetBot(userID string, includeDeleted bool) (*model.Bot, *model.AppError)
        + GetBots(options *model.BotGetOptions) ([]*model.Bot, *model.AppError)
        + UpdateBotActive(userID string, active bool) (*model.Bot, *model.AppError)
        + PermanentDeleteBot(userID string) *model.AppError
        + EnsureBotUser(bot *model.Bot) (string, error)
        + PublishUserTyping(userID string, channelID string, parentId string) *model.AppError
        + PluginHTTP(request *http.Request) *http.Response
        + CreateCommand(cmd *model.Command) (*model.Command, error)
        + ListCommands(teamID string) ([]*model.Command, error)
        + ListCustomCommands(teamID string) ([]*model.Command, error)
        + ListPluginCommands(teamID string) ([]*model.Command, error)
        + ListBuiltInCommands() ([]*model.Command, error)
        + GetCommand(commandID string) (*model.Command, error)
        + UpdateCommand(commandID string, updatedCmd *model.Command) (*model.Command, error)
        + DeleteCommand(commandID string) error
        + CreateOAuthApp(app *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + GetOAuthApp(appID string) (*model.OAuthApp, *model.AppError)
        + UpdateOAuthApp(app *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + DeleteOAuthApp(appID string) *model.AppError
        + PublishPluginClusterEvent(ev model.PluginClusterEvent, opts model.PluginClusterEventSendOptions) error
        + RequestTrialLicense(requesterID string, users int, termsAccepted bool, receiveEmailsAccepted bool) *model.AppError
        + GetCloudLimits() (*model.ProductLimits, error)
        + RegisterCollectionAndTopic(collectionType string, topicType string) error
        + CreateUploadSession(us *model.UploadSession) (*model.UploadSession, error)
        + UploadData(us *model.UploadSession, rd io.Reader) (*model.FileInfo, error)
        + GetUploadSession(uploadID string) (*model.UploadSession, error)
        + SendPushNotification(notification *model.PushNotification, userID string) *model.AppError
        + RegisterPluginForSharedChannels(opts model.RegisterPluginOpts) (string, error)
        + UnregisterPluginForSharedChannels(pluginID string) error
        + ShareChannel(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UpdateSharedChannel(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UnshareChannel(channelID string) (bool, error)
        + UpdateSharedChannelCursor(channelID string, remoteID string, cusror model.GetPostsSinceForSyncCursor) error
        + SyncSharedChannel(channelID string) error
        + InviteRemoteToChannel(channelID string, remoteID string, userID string, shareIfNotShared bool) error
        + UninviteRemoteFromChannel(channelID string, remoteID string) error

    }
    class PluginCommand << (S,Aquamarine) >> {
        + Command *model.Command
        + PluginId string

    }
    class PluginResponseWriter << (S,Aquamarine) >> {
        + Header() http.Header
        + WriteHeader(statusCode int) 
        + GenerateResponse() *http.Response

    }
    class PostNotification << (S,Aquamarine) >> {
        + Channel *model.Channel
        + Post *model.Post
        + ProfileMap <font color=blue>map</font>[string]*model.User
        + Sender *model.User

        + GetChannelName(userNameFormat string, excludeId string) string
        + GetSenderName(userNameFormat string, overridesAllowed bool) string

    }
    class PushNotification << (S,Aquamarine) >> {
    }
    class PushNotificationsHub << (S,Aquamarine) >> {
    }
    class RateLimiter << (S,Aquamarine) >> {
        + GenerateKey(r *http.Request) string
        + RateLimitWriter(key string, w http.ResponseWriter) bool
        + UserIdRateLimit(userID string, w http.ResponseWriter) bool
        + RateLimitHandler(wrappedHandler http.Handler) http.Handler

    }
    class Server << (S,Aquamarine) >> {
        + RootRouter *mux.Router
        + LocalRouter *mux.Router
        + Router *mux.Router
        + Server *http.Server
        + ListenAddr *net.TCPAddr
        + RateLimiter *RateLimiter
        + EmailService email.ServiceInterface
        + PushNotificationsHub PushNotificationsHub
        + Jobs *jobs.JobServer
        + Audit *audit.Audit
        + Cloud einterfaces.CloudInterface
        + IPFiltering einterfaces.IPFilteringInterface
        + OutgoingOAuthConnection einterfaces.OutgoingOAuthConnectionInterface

        + GetLogs(c request.CTX, page int, perPage int) ([]string, *model.AppError)
        + QueryLogs(c request.CTX, page int, perPage int, logFilter *model.LogFilter) (<font color=blue>map</font>[string][]string, *model.AppError)
        + GetLogsSkipSend(page int, perPage int, logFilter *model.LogFilter) ([]string, *model.AppError)
        + InvalidateAllCaches() *model.AppError
        + InvalidateAllCachesSkipSend() 
        + TemplatesContainer() *templates.Container
        + AddClusterLeaderChangedListener(listener <font color=blue>func</font>() ) string
        + RemoveClusterLeaderChangedListener(id string) 
        + InvokeClusterLeaderChangedListeners() 
        + IsLeader() bool
        + Config() *model.Config
        + MailServiceConfig() *mail.SMTPConfig
        + License() *model.License
        + LoadLicense() 
        + SaveLicense(licenseBytes []byte) (*model.License, *model.AppError)
        + SetLicense(license *model.License) bool
        + ValidateAndSetLicenseBytes(b []byte) bool
        + SetClientLicense(m <font color=blue>map</font>[string]string) 
        + ClientLicense() <font color=blue>map</font>[string]string
        + RemoveLicense() *model.AppError
        + AddLicenseListener(listener <font color=blue>func</font>(*model.License, *model.License) ) string
        + RemoveLicenseListener(id string) 
        + GetSanitizedClientLicense() <font color=blue>map</font>[string]string
        + GenerateRenewalToken(expiration time.Duration) (string, *model.AppError)
        + GenerateLicenseRenewalLink() (string, string, *model.AppError)
        + StopPushNotificationsHubWorkers() 
        + GetRoleByName(ctx context.Context, name string) (*model.Role, *model.AppError)
        + GetSchemes(scope string, offset int, limit int) ([]*model.Scheme, *model.AppError)
        + IsPhase2MigrationCompleted() *model.AppError
        + DoSecurityUpdateCheck() 
        + Store() store.Store
        + SetStore(st store.Store) 
        + AppOptions() []AppOption
        + Channels() *Channels
        + DatabaseTypeAndSchemaVersion() (string, string)
        + StopHTTPServer() 
        + Shutdown() 
        + Restart() error
        + CanIUpgradeToE0() error
        + UpgradeToE0() error
        + UpgradeToE0Status() (int64, error)
        + Go(f <font color=blue>func</font>() ) 
        + GoBuffered(f <font color=blue>func</font>() ) 
        + Start() error
        + HandleMetrics(route string, h http.Handler) 
        + SendRemoveExpiredLicenseEmail(email string, ctaText string, ctaLink string, locale string, siteURL string) *model.AppError
        + FileBackend() filestore.FileBackend
        + ExportFileBackend() filestore.FileBackend
        + TotalWebsocketConnections() int
        + ClusterHealthScore() int
        + TelemetryId() string
        + HTTPService() httpservice.HTTPService
        + GetStore() store.Store
        + GetRemoteClusterService() remotecluster.RemoteClusterServiceIFace
        + GetSharedChannelSyncService() SharedChannelServiceIFace
        + GetMetrics() einterfaces.MetricsInterface
        + SetRemoteClusterService(remoteClusterService remotecluster.RemoteClusterServiceIFace) 
        + SetSharedChannelSyncService(sharedChannelService SharedChannelServiceIFace) 
        + GetProfileImage(user *model.User) ([]byte, bool, *model.AppError)
        + GetDefaultProfileImage(user *model.User) ([]byte, *model.AppError)
        + ReadFile(path string) ([]byte, *model.AppError)
        + Platform() *platform.PlatformService
        + Log() *mlog.Logger
        + NotificationsLog() *mlog.Logger
        + GetTelemetryService() *telemetry.TelemetryService

    }
    interface SharedChannelServiceIFace  {
        + Shutdown() error
        + Start() error
        + NotifyChannelChanged(channelId string) 
        + NotifyUserProfileChanged(userID string) 
        + SendChannelInvite(channel *model.Channel, userId string, rc *model.RemoteCluster, options ...sharedchannel.InviteOption) error
        + Active() bool
        + InviteRemoteToChannel(channelID string, remoteID string, userID string, shareIfNotShared bool) error
        + UninviteRemoteFromChannel(channelID string, remoteID string) error
        + ShareChannel(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UpdateSharedChannel(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UnshareChannel(channelID string) (bool, error)
        + CheckChannelNotShared(channelID string) error
        + CheckChannelIsShared(channelID string) error
        + CheckCanInviteToSharedChannel(channelId string) error

    }
    class StandardMentionParser << (S,Aquamarine) >> {
        + ProcessText(text string) 
        + Results() *MentionResults

    }
    class TokenLocation << (S,Aquamarine) >> {
        + String() string

    }
    class UploadFileTask << (S,Aquamarine) >> {
        + Logger mlog.LoggerIFace
        + Name string
        + ChannelId string
        + TeamId string
        + UserId string
        + Timestamp time.Time
        + ContentLength int64
        + Input io.Reader
        + ClientId string
        + Raw bool

    }
    class accessibleBounds << (S,Aquamarine) >> {
    }
    class actionData << (S,Aquamarine) >> {
    }
    class addFollowersBroadcastHook << (S,Aquamarine) >> {
        + Process(msg *platform.HookedWebSocketEvent, webConn *platform.WebConn, args <font color=blue>map</font>[string]any) error

    }
    class addMentionsBroadcastHook << (S,Aquamarine) >> {
        + Process(msg *platform.HookedWebSocketEvent, webConn *platform.WebConn, args <font color=blue>map</font>[string]any) error

    }
    class app.AppOption << (T, #FF7700) >>  {
    }
    class app.AppOptionCreator << (T, #FF7700) >>  {
    }
    class app.MentionKeywords << (T, #FF7700) >>  {
    }
    class app.MentionType << (T, #FF7700) >>  {
    }
    class app.MentionableID << (T, #FF7700) >>  {
    }
    class app.Option << (T, #FF7700) >>  {
    }
    class app.ReactionImportData << (T, #FF7700) >>  {
    }
    class app.TokenLocation << (T, #FF7700) >>  {
    }
    class app.notificationType << (T, #FF7700) >>  {
    }
    class app.notifyPropsReason << (T, #FF7700) >>  {
    }
    class app.permissionsMap << (T, #FF7700) >>  {
    }
    class app.pluginInstallationStrategy << (T, #FF7700) >>  {
    }
    class app.statusReason << (T, #FF7700) >>  {
    }
    class categoryChannelDiff << (S,Aquamarine) >> {
    }
    interface configService  {
        + Config() *model.Config
        + AddConfigListener(listener <font color=blue>func</font>(*model.Config, *model.Config) ) string
        + RemoveConfigListener(id string) 
        + UpdateConfig(f <font color=blue>func</font>(*model.Config) ) 
        + SaveConfig(newCfg *model.Config, sendConfigChangeClusterMessage bool) (*model.Config, *model.Config, *model.AppError)

    }
    class filterFileOptions << (S,Aquamarine) >> {
    }
    class filterPostOptions << (S,Aquamarine) >> {
    }
    class linkMetadataCache << (S,Aquamarine) >> {
        + OpenGraph *opengraph.OpenGraph
        + PostImage *model.PostImage
        + Permalink *model.Permalink

    }
    class mockSharedChannelService << (S,Aquamarine) >> {
        + NotifyChannelChanged(channelId string) 
        + NotifyUserProfileChanged(userId string) 
        + Shutdown() error
        + Start() error
        + Active() bool
        + SendChannelInvite(channel *model.Channel, userId string, rc *model.RemoteCluster, options ...sharedchannel.InviteOption) error
        + NumInvitations() int

    }
    class permissionTransformation << (S,Aquamarine) >> {
        + On <font color=blue>func</font>(*model.Role, <font color=blue>map</font>[string]<font color=blue>map</font>[string]bool) bool
        + Add []string
        + Remove []string

    }
    class pluginSignaturePath << (S,Aquamarine) >> {
    }
    class postAndData << (S,Aquamarine) >> {
    }
    class postData << (S,Aquamarine) >> {
        + SenderName string
        + ChannelName string
        + Message template.HTML
        + MessageURL string
        + SenderPhoto string
        + PostPhoto string
        + Time string
        + ShowChannelIcon bool
        + OtherChannelMembersCount int
        + MessageAttachments []*email.EmailMessageAttachment

    }
    class "imports.ReactionImportData" as importsReactionImportData {
        'This class was created so that we can correctly have an alias pointing to this name. Since it contains dots that can break namespaces
    }
}
"jwt.RegisteredClaims" *-- "app.JWTClaims"
"bytes.Buffer" *-- "app.PluginResponseWriter"
"app.SharedChannelServiceIFace" *-- "app.mockSharedChannelService"

"app.AppIface" <|-- "app.App"
"app.configService" <|-- "app.App"
"export_delete.AppIface" <|-- "app.App"
"export_process.AppIface" <|-- "app.App"
"export_users_to_csv.ExportUsersToCSVAppIFace" <|-- "app.App"
"extract_content.AppIface" <|-- "app.App"
"import_delete.AppIface" <|-- "app.App"
"import_process.AppIface" <|-- "app.App"
"jobs.BatchMigrationWorkerAppIFace" <|-- "app.App"
"jobs.BatchReportWorkerAppIFace" <|-- "app.App"
"last_accessible_file.AppIface" <|-- "app.App"
"last_accessible_post.AppIface" <|-- "app.App"
"notify_admin.AppIface" <|-- "app.App"
"platform.SuiteIFace" <|-- "app.App"
"plugins.AppIface" <|-- "app.App"
"post_persistent_notifications.AppIface" <|-- "app.App"
"product_notices.AppIface" <|-- "app.App"
"resend_invitation_email.AppIface" <|-- "app.App"
"teams.WebHub" <|-- "app.App"
"platform.HookRunner" <|-- "app.Channels"
"teams.WebHub" <|-- "app.Channels"
"sqlstore.JSONSerializable" <|-- "app.MailToLinkContent"
"app.MentionParser" <|-- "app.StandardMentionParser"

namespace audit {
    class Audit << (S,Aquamarine) >> {
        + OnQueueFull <font color=blue>func</font>(string, int) bool
        + OnError <font color=blue>func</font>(error) 

        + Init(maxQueueSize int) 
        + LogRecord(level mlog.Level, rec Record) 
        + Configure(cfg mlog.LoggerConfiguration) error
        + Flush() error
        + Shutdown() error

    }
    interface Auditable  {
        + Auditable() <font color=blue>map</font>[string]<font color=blue>interface</font>{}

    }
    class EventActor << (S,Aquamarine) >> {
        + UserId string
        + SessionId string
        + Client string
        + IpAddress string
        + XForwardedFor string

    }
    class EventData << (S,Aquamarine) >> {
        + Parameters <font color=blue>map</font>[string]<font color=blue>interface</font>{}
        + PriorState <font color=blue>map</font>[string]<font color=blue>interface</font>{}
        + ResultState <font color=blue>map</font>[string]<font color=blue>interface</font>{}
        + ObjectType string

    }
    class EventError << (S,Aquamarine) >> {
        + Description string
        + Code int

    }
    class EventMeta << (S,Aquamarine) >> {
        + ApiPath string
        + ClusterId string

    }
    class Record << (S,Aquamarine) >> {
        + EventName string
        + Status string
        + EventData EventData
        + Actor EventActor
        + Meta <font color=blue>map</font>[string]<font color=blue>interface</font>{}
        + Error EventError

        + Success() 
        + Fail() 
        + AddEventPriorState(object Auditable) 
        + AddEventResultState(object Auditable) 
        + AddEventObjectType(objectType string) 
        + AddMeta(name string, val <font color=blue>interface</font>{}) 
        + AddErrorCode(code int) 
        + AddErrorDesc(description string) 

    }
}


namespace email {
    class EmailBatchingJob << (S,Aquamarine) >> {
        + Start() 
        + Stop() 
        + Add(user *model.User, post *model.Post, team *model.Team) bool
        + CheckPendingEmails() 

    }
    class EmailMessageAttachment << (S,Aquamarine) >> {
        + Pretext template.HTML
        + Text template.HTML
        + FieldRows []FieldRow

    }
    class FieldRow << (S,Aquamarine) >> {
        + Cells []*model.SlackAttachmentField

    }
    class Service << (S,Aquamarine) >> {
        + EmailBatching *EmailBatchingJob

        + SendChangeUsernameEmail(newUsername string, email string, locale string, siteURL string) error
        + SendEmailChangeVerifyEmail(newUserEmail string, locale string, siteURL string, token string) error
        + SendEmailChangeEmail(oldEmail string, newEmail string, locale string, siteURL string) error
        + SendVerifyEmail(userEmail string, locale string, siteURL string, token string, redirect string) error
        + SendSignInChangeEmail(email string, method string, locale string, siteURL string) error
        + SendWelcomeEmail(userID string, email string, verified bool, disableWelcomeEmail bool, locale string, siteURL string, redirect string) error
        + SendCloudUpgradeConfirmationEmail(userEmail string, name string, date string, locale string, siteURL string, workspaceName string, isYearly bool, embeddedFiles <font color=blue>map</font>[string]io.Reader) error
        + SendCloudWelcomeEmail(userEmail string, locale string, teamInviteID string, workSpaceName string, dns string, siteURL string) error
        + SendPasswordChangeEmail(email string, method string, locale string, siteURL string) error
        + SendUserAccessTokenAddedEmail(email string, locale string, siteURL string) error
        + SendPasswordResetEmail(email string, token *model.Token, locale string, siteURL string) (bool, error)
        + SendMfaChangeEmail(email string, activated bool, locale string, siteURL string) error
        + SendInviteEmails(team *model.Team, senderName string, senderUserId string, invites []string, siteURL string, reminderData *model.TeamInviteReminderData, errorWhenNotSent bool, isSystemAdmin bool, isFirstAdmin bool) error
        + SendGuestInviteEmails(team *model.Team, channels []*model.Channel, senderName string, senderUserId string, senderProfileImage []byte, invites []string, siteURL string, message string, errorWhenNotSent bool, isSystemAdmin bool, isFirstAdmin bool) error
        + SendInviteEmailsToTeamAndChannels(team *model.Team, channels []*model.Channel, senderName string, senderUserId string, senderProfileImage []byte, invites []string, siteURL string, reminderData *model.TeamInviteReminderData, message string, errorWhenNotSent bool, isSystemAdmin bool, isFirstAdmin bool) ([]*model.EmailInviteWithError, error)
        + NewEmailTemplateData(locale string) templates.Data
        + SendDeactivateAccountEmail(email string, locale string, siteURL string) error
        + SendNotificationMail(to string, subject string, htmlBody string) error
        + SendMailWithEmbeddedFilesAndCustomReplyTo(to string, subject string, htmlBody string, replyToAddress string, embeddedFiles <font color=blue>map</font>[string]io.Reader, category string) error
        + SendMailWithEmbeddedFiles(to string, subject string, htmlBody string, embeddedFiles <font color=blue>map</font>[string]io.Reader, messageID string, inReplyTo string, references string, category string) error
        + InvalidateVerifyEmailTokensForUser(userID string) *model.AppError
        + CreateVerifyEmailToken(userID string, newEmail string) (*model.Token, error)
        + SendLicenseUpForRenewalEmail(email string, name string, locale string, siteURL string, ctaTitle string, ctaLink string, ctaText string, daysToExpiration int) error
        + SendPaymentFailedEmail(email string, locale string, failedPayment *model.FailedPayment, planName string, siteURL string) (bool, error)
        + SendNoCardPaymentFailedEmail(email string, locale string, siteURL string) error
        + SendDelinquencyEmail7(email string, locale string, siteURL string, planName string) error
        + SendDelinquencyEmail14(email string, locale string, siteURL string, planName string) error
        + SendDelinquencyEmail30(email string, locale string, siteURL string, planName string) error
        + SendDelinquencyEmail45(email string, locale string, siteURL string, planName string, delinquencyDate string) error
        + SendDelinquencyEmail60(email string, locale string, siteURL string) error
        + SendDelinquencyEmail75(email string, locale string, siteURL string, planName string, delinquencyDate string) error
        + SendDelinquencyEmail90(email string, locale string, siteURL string) error
        + SendCloudRenewalEmail60(email string, locale string, siteURL string) error
        + SendCloudRenewalEmail30(email string, locale string, siteURL string) error
        + SendCloudRenewalEmail7(email string, locale string, siteURL string) error
        + SendRemoveExpiredLicenseEmail(ctaText string, ctaLink string, email string, locale string, siteURL string) error
        + SendIPFiltersChangedEmail(email string, initiatingUser *model.User, siteURL string, portalURL string, locale string, isWorkspaceOwner bool) error
        + InitEmailBatching() 
        + AddNotificationEmailToBatch(user *model.User, post *model.Post, team *model.Team) *model.AppError
        + GetMessageForNotification(post *model.Post, teamName string, siteUrl string, translateFunc i18n.TranslateFunc) string
        + GenerateHyperlinkForChannels(postMessage string, teamName string, landingURL string) (string, error)
        + Stop() 
        + Store() store.Store
        + SetStore(st store.Store) 
        + GetPerDayEmailRateLimiter() *throttled.GCRARateLimiter
        + GetPerHourEmailRateLimiter() *throttled.GCRARateLimiter
        + GetTrackFlowStartedByRole(isFirstAdmin bool, isSystemAdmin bool) string

    }
    class ServiceConfig << (S,Aquamarine) >> {
        + ConfigFn <font color=blue>func</font>() *model.Config
        + LicenseFn <font color=blue>func</font>() *model.License
        + TemplatesContainer *templates.Container
        + UserService *users.UserService
        + Store store.Store

    }
    interface ServiceInterface  {
        + GetPerDayEmailRateLimiter() *throttled.GCRARateLimiter
        + NewEmailTemplateData(locale string) templates.Data
        + SendEmailChangeVerifyEmail(newUserEmail string, locale string, siteURL string, token string) error
        + SendEmailChangeEmail(oldEmail string, newEmail string, locale string, siteURL string) error
        + SendVerifyEmail(userEmail string, locale string, siteURL string, token string, redirect string) error
        + SendSignInChangeEmail(email string, method string, locale string, siteURL string) error
        + SendWelcomeEmail(userID string, email string, verified bool, disableWelcomeEmail bool, locale string, siteURL string, redirect string) error
        + SendCloudUpgradeConfirmationEmail(userEmail string, name string, trialEndDate string, locale string, siteURL string, workspaceName string, isYearly bool, embeddedFiles <font color=blue>map</font>[string]io.Reader) error
        + SendCloudWelcomeEmail(userEmail string, locale string, teamInviteID string, workSpaceName string, dns string, siteURL string) error
        + SendPasswordChangeEmail(email string, method string, locale string, siteURL string) error
        + SendUserAccessTokenAddedEmail(email string, locale string, siteURL string) error
        + SendPasswordResetEmail(email string, token *model.Token, locale string, siteURL string) (bool, error)
        + SendMfaChangeEmail(email string, activated bool, locale string, siteURL string) error
        + SendInviteEmails(team *model.Team, senderName string, senderUserId string, invites []string, siteURL string, reminderData *model.TeamInviteReminderData, errorWhenNotSent bool, isSystemAdmin bool, isFirstAdmin bool) error
        + SendGuestInviteEmails(team *model.Team, channels []*model.Channel, senderName string, senderUserId string, senderProfileImage []byte, invites []string, siteURL string, message string, errorWhenNotSent bool, isSystemAdmin bool, isFirstAdmin bool) error
        + SendInviteEmailsToTeamAndChannels(team *model.Team, channels []*model.Channel, senderName string, senderUserId string, senderProfileImage []byte, invites []string, siteURL string, reminderData *model.TeamInviteReminderData, message string, errorWhenNotSent bool, isSystemAdmin bool, isFirstAdmin bool) ([]*model.EmailInviteWithError, error)
        + SendDeactivateAccountEmail(email string, locale string, siteURL string) error
        + SendNotificationMail(to string, subject string, htmlBody string) error
        + SendMailWithEmbeddedFiles(to string, subject string, htmlBody string, embeddedFiles <font color=blue>map</font>[string]io.Reader, messageID string, inReplyTo string, references string, category string) error
        + SendLicenseUpForRenewalEmail(email string, name string, locale string, siteURL string, ctaTitle string, ctaLink string, ctaText string, daysToExpiration int) error
        + SendPaymentFailedEmail(email string, locale string, failedPayment *model.FailedPayment, planName string, siteURL string) (bool, error)
        + SendDelinquencyEmail7(email string, locale string, siteURL string, planName string) error
        + SendDelinquencyEmail14(email string, locale string, siteURL string, planName string) error
        + SendDelinquencyEmail30(email string, locale string, siteURL string, planName string) error
        + SendDelinquencyEmail45(email string, locale string, siteURL string, planName string, delinquencyDate string) error
        + SendDelinquencyEmail60(email string, locale string, siteURL string) error
        + SendDelinquencyEmail75(email string, locale string, siteURL string, planName string, delinquencyDate string) error
        + SendDelinquencyEmail90(email string, locale string, siteURL string) error
        + SendCloudRenewalEmail60(email string, locale string, siteURL string) error
        + SendCloudRenewalEmail30(email string, locale string, siteURL string) error
        + SendCloudRenewalEmail7(email string, locale string, siteURL string) error
        + SendNoCardPaymentFailedEmail(email string, locale string, siteURL string) error
        + SendRemoveExpiredLicenseEmail(ctaText string, ctaLink string, email string, locale string, siteURL string) error
        + AddNotificationEmailToBatch(user *model.User, post *model.Post, team *model.Team) *model.AppError
        + GetMessageForNotification(post *model.Post, teamName string, siteUrl string, translateFunc i18n.TranslateFunc) string
        + GenerateHyperlinkForChannels(postMessage string, teamName string, teamURL string) (string, error)
        + InitEmailBatching() 
        + SendChangeUsernameEmail(newUsername string, email string, locale string, siteURL string) error
        + CreateVerifyEmailToken(userID string, newEmail string) (*model.Token, error)
        + SendIPFiltersChangedEmail(email string, userWhoChangedFilter *model.User, siteURL string, portalURL string, locale string, isWorkspaceOwner bool) error
        + SetStore(st store.Store) 
        + Stop() 

    }
    class batchedNotification << (S,Aquamarine) >> {
    }
    class postData << (S,Aquamarine) >> {
        + SenderName string
        + ChannelName string
        + Message template.HTML
        + MessageURL string
        + SenderPhoto string
        + PostPhoto string
        + Time string
        + ShowChannelIcon bool
        + OtherChannelMembersCount int
        + MessageAttachments []*EmailMessageAttachment

    }
}
"model.SlackAttachment" *-- "email.EmailMessageAttachment"

"email.ServiceInterface" <|-- "email.Service"

namespace export_delete {
    interface AppIface  {
        + ListExportDirectory(path string) ([]string, *model.AppError)
        + ExportFileModTime(path string) (time.Time, *model.AppError)
        + RemoveExportFile(path string) *model.AppError

    }
}


namespace export_process {
    interface AppIface  {
        + WriteExportFileContext(ctx context.Context, fr io.Reader, path string) (int64, *model.AppError)
        + BulkExport(ctx request.CTX, writer io.Writer, outPath string, job *model.Job, opts model.BulkExportOpts) *model.AppError
        + Log() *mlog.Logger

    }
}


namespace export_users_to_csv {
    interface ExportUsersToCSVAppIFace  {
        + GetUsersForReporting(filter *model.UserReportOptions) ([]*model.UserReport, *model.AppError)

    }
}


namespace extract_content {
    interface AppIface  {
        + ExtractContentFromFileInfo(rctx request.CTX, fileInfo *model.FileInfo) error

    }
}


namespace featureflag {
    class SyncParams << (S,Aquamarine) >> {
        + ServerID string
        + SplitKey string
        + SyncIntervalSeconds int
        + Log *mlog.Logger
        + Attributes <font color=blue>map</font>[string]any

    }
    class Synchronizer << (S,Aquamarine) >> {
        + EnsureReady() error
        + UpdateFeatureFlagValues(base model.FeatureFlags) model.FeatureFlags
        + Close() 

    }
    class splitLogger << (S,Aquamarine) >> {
        + Error(msg ...any) 
        + Warning(msg ...any) 
        + Info(msg ...any) 
        + Debug(msg ...any) 
        + Verbose(msg ...any) 

    }
}
"featureflag.SyncParams" *-- "featureflag.Synchronizer"


namespace hosted_purchase_screening {
    interface ScreenTimeStore  {
        + GetByName( string) (*model.System, error)
        + PermanentDeleteByName(name string) (*model.System, error)

    }
}


namespace imaging {
    class Decoder << (S,Aquamarine) >> {
        + Decode(rd io.Reader) (image.Image, string, error)
        + DecodeMemBounded(rd io.Reader) (image.Image, string, <font color=blue>func</font>() , error)
        + DecodeConfig(rd io.Reader) (image.Config, string, error)

    }
    class DecoderOptions << (S,Aquamarine) >> {
        + ConcurrencyLevel int

    }
    class Encoder << (S,Aquamarine) >> {
        + EncodeJPEG(wr io.Writer, img image.Image, quality int) error
        + EncodePNG(wr io.Writer, img image.Image) error

    }
    class EncoderOptions << (S,Aquamarine) >> {
        + ConcurrencyLevel int

    }
    class SVGInfo << (S,Aquamarine) >> {
        + Width int
        + Height int

    }
    interface rawImg  {
        + Set(x int, y int, c color.Color) 
        + Opaque() bool

    }
}


namespace imgutils {
    class blockReader << (S,Aquamarine) >> {
        + ReadByte() (byte, error)
        + Read(p []byte) (int, error)

    }
    class decoder << (S,Aquamarine) >> {
    }
    interface reader  {
    }
}


namespace import_delete {
    interface AppIface  {
        + ListDirectory(path string) ([]string, *model.AppError)
        + FileModTime(path string) (time.Time, *model.AppError)
        + RemoveFile(path string) *model.AppError

    }
}


namespace import_process {
    interface AppIface  {
        + RemoveFile(path string) *model.AppError
        + FileExists(path string) (bool, *model.AppError)
        + FileSize(path string) (int64, *model.AppError)
        + FileReader(path string) (filestore.ReadCloseSeeker, *model.AppError)
        + BulkImportWithPath(c request.CTX, jsonlReader io.Reader, attachmentsReader *zip.Reader, dryRun bool, workers int, importPath string) (*model.AppError, int)
        + Log() *mlog.Logger

    }
}


namespace imports {
    class AttachmentImportData << (S,Aquamarine) >> {
        + Path *string
        + Data *zip.File

    }
    class ChannelImportData << (S,Aquamarine) >> {
        + Team *string
        + Name *string
        + DisplayName *string
        + Type *model.ChannelType
        + Header *string
        + Purpose *string
        + Scheme *string
        + DeletedAt *int64

    }
    class ComparablePreference << (S,Aquamarine) >> {
        + Category string
        + Name string

    }
    class DirectChannelImportData << (S,Aquamarine) >> {
        + Members *[]string
        + FavoritedBy *[]string
        + Header *string

    }
    class DirectPostImportData << (S,Aquamarine) >> {
        + ChannelMembers *[]string
        + User *string
        + Type *string
        + Message *string
        + Props *model.StringInterface
        + CreateAt *int64
        + EditAt *int64
        + FlaggedBy *[]string
        + Reactions *[]ReactionImportData
        + Replies *[]ReplyImportData
        + Attachments *[]AttachmentImportData
        + IsPinned *bool

    }
    class EmojiImportData << (S,Aquamarine) >> {
        + Name *string
        + Image *string
        + Data *zip.File

    }
    class LineImportData << (S,Aquamarine) >> {
        + Type string
        + Scheme *SchemeImportData
        + Team *TeamImportData
        + Channel *ChannelImportData
        + User *UserImportData
        + Post *PostImportData
        + DirectChannel *DirectChannelImportData
        + DirectPost *DirectPostImportData
        + Emoji *EmojiImportData
        + Version *int
        + Info *VersionInfoImportData

    }
    class LineImportWorkerData << (S,Aquamarine) >> {
        + LineNumber int

    }
    class LineImportWorkerError << (S,Aquamarine) >> {
        + Error *model.AppError
        + LineNumber int

    }
    class PostImportData << (S,Aquamarine) >> {
        + Team *string
        + Channel *string
        + User *string
        + Type *string
        + Message *string
        + Props *model.StringInterface
        + CreateAt *int64
        + EditAt *int64
        + FlaggedBy *[]string
        + Reactions *[]ReactionImportData
        + Replies *[]ReplyImportData
        + Attachments *[]AttachmentImportData
        + IsPinned *bool

    }
    class ReactionImportData << (S,Aquamarine) >> {
        + User *string
        + CreateAt *int64
        + EmojiName *string

    }
    class ReplyImportData << (S,Aquamarine) >> {
        + User *string
        + Type *string
        + Message *string
        + CreateAt *int64
        + EditAt *int64
        + FlaggedBy *[]string
        + Reactions *[]ReactionImportData
        + Attachments *[]AttachmentImportData

    }
    class RoleImportData << (S,Aquamarine) >> {
        + Name *string
        + DisplayName *string
        + Description *string
        + Permissions *[]string

    }
    class SchemeImportData << (S,Aquamarine) >> {
        + Name *string
        + DisplayName *string
        + Description *string
        + Scope *string
        + DefaultTeamAdminRole *RoleImportData
        + DefaultTeamUserRole *RoleImportData
        + DefaultChannelAdminRole *RoleImportData
        + DefaultChannelUserRole *RoleImportData
        + DefaultTeamGuestRole *RoleImportData
        + DefaultChannelGuestRole *RoleImportData

    }
    class TeamImportData << (S,Aquamarine) >> {
        + Name *string
        + DisplayName *string
        + Type *string
        + Description *string
        + AllowOpenInvite *bool
        + Scheme *string

    }
    class UserChannelImportData << (S,Aquamarine) >> {
        + Name *string
        + Roles *string
        + NotifyProps *UserChannelNotifyPropsImportData
        + Favorite *bool
        + MentionCount *int64
        + MentionCountRoot *int64
        + UrgentMentionCount *int64
        + MsgCount *int64
        + MsgCountRoot *int64
        + LastViewedAt *int64

    }
    class UserChannelNotifyPropsImportData << (S,Aquamarine) >> {
        + Desktop *string
        + Mobile *string
        + MarkUnread *string

    }
    class UserImportData << (S,Aquamarine) >> {
        + ProfileImage *string
        + ProfileImageData *zip.File
        + Username *string
        + Email *string
        + AuthService *string
        + AuthData *string
        + Password *string
        + Nickname *string
        + FirstName *string
        + LastName *string
        + Position *string
        + Roles *string
        + Locale *string
        + UseMarkdownPreview *string
        + UseFormatting *string
        + ShowUnreadSection *string
        + DeleteAt *int64
        + Teams *[]UserTeamImportData
        + Theme *string
        + UseMilitaryTime *string
        + CollapsePreviews *string
        + MessageDisplay *string
        + CollapseConsecutive *string
        + ColorizeUsernames *string
        + ChannelDisplayMode *string
        + TutorialStep *string
        + EmailInterval *string
        + NotifyProps *UserNotifyPropsImportData

    }
    class UserNotifyPropsImportData << (S,Aquamarine) >> {
        + Desktop *string
        + DesktopSound *string
        + Email *string
        + Mobile *string
        + MobilePushStatus *string
        + ChannelTrigger *string
        + CommentsTrigger *string
        + MentionKeys *string

    }
    class UserTeamImportData << (S,Aquamarine) >> {
        + Name *string
        + Roles *string
        + Theme *string
        + Channels *[]UserChannelImportData

    }
    class VersionInfoImportData << (S,Aquamarine) >> {
        + Generator string
        + Version string
        + Created string
        + Additional json.RawMessage

    }
}
"imports.LineImportData" *-- "imports.LineImportWorkerData"


namespace jobs {
    class BatchMigrationWorker << (S,Aquamarine) >> {
    }
    interface BatchMigrationWorkerAppIFace  {
        + GetClusterStatus(rctx request.CTX) []*model.ClusterInfo

    }
    class BatchReportWorker << (S,Aquamarine) >> {
    }
    interface BatchReportWorkerAppIFace  {
        + SaveReportChunk(format string, prefix string, count int, reportData []model.ReportableObject) *model.AppError
        + CompileReportChunks(format string, prefix string, numberOfChunks int, headers []string) *model.AppError
        + SendReportToUser(rctx request.CTX, job *model.Job, format string) *model.AppError
        + CleanupReportChunks(format string, prefix string, numberOfChunks int) *model.AppError

    }
    class BatchWorker << (S,Aquamarine) >> {
        + Run() 
        + Stop() 
        + JobChannel() <font color=blue>chan</font> model.Job
        + IsEnabled(_ *model.Config) bool
        + DoJob(job *model.Job) 

    }
    class DailyScheduler << (S,Aquamarine) >> {
        + Enabled(cfg *model.Config) bool
        + NextScheduleTime(cfg *model.Config, now time.Time, _ bool, _ *model.Job) *time.Time
        + ScheduleJob(c request.CTX, _ *model.Config, _ bool, _ *model.Job) (*model.Job, *model.AppError)

    }
    class JobServer << (S,Aquamarine) >> {
        + ConfigService configservice.ConfigService
        + Store store.Store

        + CreateJob(c request.CTX, jobType string, jobData <font color=blue>map</font>[string]string) (*model.Job, *model.AppError)
        + CreateJobOnce(c request.CTX, jobType string, jobData <font color=blue>map</font>[string]string) (*model.Job, *model.AppError)
        + _createJob(c request.CTX, jobType string, jobData <font color=blue>map</font>[string]string) (*model.Job, *model.AppError)
        + GetJob(c request.CTX, id string) (*model.Job, *model.AppError)
        + ClaimJob(job *model.Job) (bool, *model.AppError)
        + SetJobProgress(job *model.Job, progress int64) *model.AppError
        + SetJobWarning(job *model.Job) *model.AppError
        + SetJobSuccess(job *model.Job) *model.AppError
        + SetJobError(job *model.Job, jobError *model.AppError) *model.AppError
        + SetJobCanceled(job *model.Job) *model.AppError
        + SetJobPending(job *model.Job) *model.AppError
        + UpdateInProgressJobData(job *model.Job) *model.AppError
        + HandleJobPanic(logger mlog.LoggerIFace, job *model.Job) 
        + RequestCancellation(c request.CTX, jobId string) *model.AppError
        + CancellationWatcher(c request.CTX, jobId string, cancelChan <font color=blue>chan</font> <font color=blue>struct</font>{}) 
        + CheckForPendingJobsByType(jobType string) (bool, *model.AppError)
        + GetJobsByTypeAndStatus(c request.CTX, jobType string, status string) ([]*model.Job, *model.AppError)
        + GetLastSuccessfulJobByType(jobType string) (*model.Job, *model.AppError)
        + MakeWatcher(workers *Workers, pollingInterval int) *Watcher
        + Config() *model.Config
        + Logger() mlog.LoggerIFace
        + RegisterJobType(name string, worker model.Worker, scheduler Scheduler) 
        + StartWorkers() error
        + StartSchedulers() error
        + StopWorkers() error
        + StopSchedulers() error
        + HandleClusterLeaderChange(isLeader bool) 

    }
    class PeriodicScheduler << (S,Aquamarine) >> {
        + Enabled(cfg *model.Config) bool
        + NextScheduleTime(_ *model.Config, _ time.Time, _ bool, _ *model.Job) *time.Time
        + ScheduleJob(c request.CTX, _ *model.Config, _ bool, _ *model.Job) (*model.Job, *model.AppError)

    }
    interface Scheduler  {
        + Enabled(cfg *model.Config) bool
        + NextScheduleTime(cfg *model.Config, now time.Time, pendingJobs bool, lastSuccessfulJob *model.Job) *time.Time
        + ScheduleJob(c request.CTX, cfg *model.Config, pendingJobs bool, lastSuccessfulJob *model.Job) (*model.Job, *model.AppError)

    }
    class Schedulers << (S,Aquamarine) >> {
        + AddScheduler(name string, scheduler Scheduler) 
        + Start() 
        + Stop() 

    }
    class SimpleWorker << (S,Aquamarine) >> {
        + Run() 
        + Stop() 
        + JobChannel() <font color=blue>chan</font> model.Job
        + IsEnabled(cfg *model.Config) bool
        + DoJob(job *model.Job) 

    }
    class Watcher << (S,Aquamarine) >> {
        + Start() 
        + Stop() 
        + PollAndNotify() 

    }
    class Workers << (S,Aquamarine) >> {
        + ConfigService configservice.ConfigService
        + Watcher *Watcher

        + AddWorker(name string, worker model.Worker) 
        + Get(name string) model.Worker
        + Start() 
        + Stop() 

    }
}
"jobs.BatchWorker" *-- "jobs.BatchMigrationWorker"
"jobs.BatchWorker" *-- "jobs.BatchReportWorker"

"jobs.Scheduler" <|-- "jobs.DailyScheduler"
"jobs.Scheduler" <|-- "jobs.PeriodicScheduler"

namespace last_accessible_file {
    interface AppIface  {
        + ComputeLastAccessibleFileTime() error

    }
}


namespace last_accessible_post {
    interface AppIface  {
        + ComputeLastAccessiblePostTime() error

    }
}


namespace localcachelayer {
    class LocalCacheChannelStore << (S,Aquamarine) >> {
        + ClearMembersForUserCache() 
        + ClearCaches() 
        + InvalidatePinnedPostCount(channelId string) 
        + InvalidateMemberCount(channelId string) 
        + InvalidateGuestCount(channelId string) 
        + InvalidateChannel(channelId string) 
        + InvalidateAllChannelMembersForUser(userId string) 
        + InvalidateCacheForChannelMembersNotifyProps(channelId string) 
        + InvalidateChannelByName(teamId string, name string) 
        + GetMemberCount(channelId string, allowFromCache bool) (int64, error)
        + GetGuestCount(channelId string, allowFromCache bool) (int64, error)
        + GetMemberCountFromCache(channelId string) int64
        + GetPinnedPostCount(channelId string, allowFromCache bool) (int64, error)
        + Get(id string, allowFromCache bool) (*model.Channel, error)
        + GetMany(ids []string, allowFromCache bool) (model.ChannelList, error)
        + GetAllChannelMembersForUser(userId string, allowFromCache bool, includeDeleted bool) (<font color=blue>map</font>[string]string, error)
        + GetAllChannelMembersNotifyPropsForChannel(channelId string, allowFromCache bool) (<font color=blue>map</font>[string]model.StringMap, error)
        + GetByNamesIncludeDeleted(teamId string, names []string, allowFromCache bool) ([]*model.Channel, error)
        + GetByNames(teamId string, names []string, allowFromCache bool) ([]*model.Channel, error)
        + GetByNameIncludeDeleted(teamId string, name string, allowFromCache bool) (*model.Channel, error)
        + GetByName(teamId string, name string, allowFromCache bool) (*model.Channel, error)
        + SaveMember(rctx request.CTX, member *model.ChannelMember) (*model.ChannelMember, error)
        + SaveMultipleMembers(members []*model.ChannelMember) ([]*model.ChannelMember, error)
        + GetChannelsMemberCount(channelIDs []string) (<font color=blue>map</font>[string]int64, error)
        + UpdateMember(rctx request.CTX, member *model.ChannelMember) (*model.ChannelMember, error)
        + UpdateMultipleMembers(members []*model.ChannelMember) ([]*model.ChannelMember, error)
        + RemoveMember(rctx request.CTX, channelId string, userId string) error
        + RemoveMembers(rctx request.CTX, channelId string, userIds []string) error

    }
    class LocalCacheEmojiStore << (S,Aquamarine) >> {
        + Get(c request.CTX, id string, allowFromCache bool) (*model.Emoji, error)
        + GetByName(c request.CTX, name string, allowFromCache bool) (*model.Emoji, error)
        + GetMultipleByName(c request.CTX, names []string) ([]*model.Emoji, error)
        + Delete(emoji *model.Emoji, time int64) error

    }
    class LocalCacheFileInfoStore << (S,Aquamarine) >> {
        + GetForPost(postId string, readFromMaster bool, includeDeleted bool, allowFromCache bool) ([]*model.FileInfo, error)
        + ClearCaches() 
        + InvalidateFileInfosForPostCache(postId string, deleted bool) 
        + GetStorageUsage(allowFromCache bool, includeDeleted bool) (int64, error)

    }
    class LocalCachePostStore << (S,Aquamarine) >> {
        + ClearCaches() 
        + InvalidateLastPostTimeCache(channelId string) 
        + GetEtag(channelId string, allowFromCache bool, collapsedThreads bool) string
        + GetPostsSince(options model.GetPostsSinceOptions, allowFromCache bool, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPosts(options model.GetPostsOptions, allowFromCache bool, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + AnalyticsPostCount(options *model.PostCountOptions) (int64, error)

    }
    class LocalCacheReactionStore << (S,Aquamarine) >> {
        + Save(reaction *model.Reaction) (*model.Reaction, error)
        + Delete(reaction *model.Reaction) (*model.Reaction, error)
        + GetForPost(postId string, allowFromCache bool) ([]*model.Reaction, error)
        + DeleteAllWithEmojiName(emojiName string) error

    }
    class LocalCacheRoleStore << (S,Aquamarine) >> {
        + Save(role *model.Role) (*model.Role, error)
        + GetByName(ctx context.Context, name string) (*model.Role, error)
        + GetByNames(names []string) ([]*model.Role, error)
        + Delete(roleId string) (*model.Role, error)
        + PermanentDeleteAll() error
        + ChannelHigherScopedPermissions(roleNames []string) (<font color=blue>map</font>[string]*model.RolePermissions, error)

    }
    class LocalCacheSchemeStore << (S,Aquamarine) >> {
        + Save(scheme *model.Scheme) (*model.Scheme, error)
        + Get(schemeId string) (*model.Scheme, error)
        + Delete(schemeId string) (*model.Scheme, error)
        + PermanentDeleteAll() error

    }
    class LocalCacheStore << (S,Aquamarine) >> {
        + Reaction() store.ReactionStore
        + Role() store.RoleStore
        + Scheme() store.SchemeStore
        + FileInfo() store.FileInfoStore
        + Webhook() store.WebhookStore
        + Emoji() store.EmojiStore
        + Channel() store.ChannelStore
        + Post() store.PostStore
        + TermsOfService() store.TermsOfServiceStore
        + User() store.UserStore
        + Team() store.TeamStore
        + DropAllTables() 
        + Invalidate() 

    }
    class LocalCacheTeamStore << (S,Aquamarine) >> {
        + ClearCaches() 
        + InvalidateAllTeamIdsForUser(userId string) 
        + GetUserTeamIds(userID string, allowFromCache bool) ([]string, error)
        + Update(team *model.Team) (*model.Team, error)

    }
    class LocalCacheTermsOfServiceStore << (S,Aquamarine) >> {
        + ClearCaches() 
        + Save(termsOfService *model.TermsOfService) (*model.TermsOfService, error)
        + GetLatest(allowFromCache bool) (*model.TermsOfService, error)
        + Get(id string, allowFromCache bool) (*model.TermsOfService, error)

    }
    class LocalCacheUserStore << (S,Aquamarine) >> {
        + ClearCaches() 
        + InvalidateProfileCacheForUser(userId string) 
        + InvalidateProfilesInChannelCacheByUser(userId string) 
        + InvalidateProfilesInChannelCache(channelID string) 
        + GetAllProfilesInChannel(ctx context.Context, channelId string, allowFromCache bool) (<font color=blue>map</font>[string]*model.User, error)
        + GetProfileByIds(ctx context.Context, userIds []string, options *store.UserGetByIdsOpts, allowFromCache bool) ([]*model.User, error)
        + Get(ctx context.Context, id string) (*model.User, error)
        + GetMany(ctx context.Context, ids []string) ([]*model.User, error)

    }
    class LocalCacheWebhookStore << (S,Aquamarine) >> {
        + ClearCaches() 
        + InvalidateWebhookCache(webhookId string) 
        + GetIncoming(id string, allowFromCache bool) (*model.IncomingWebhook, error)
        + DeleteIncoming(webhookId string, time int64) error
        + PermanentDeleteIncomingByUser(userId string) error
        + PermanentDeleteIncomingByChannel(channelId string) error

    }
}
"store.ChannelStore" *-- "localcachelayer.LocalCacheChannelStore"
"store.EmojiStore" *-- "localcachelayer.LocalCacheEmojiStore"
"store.FileInfoStore" *-- "localcachelayer.LocalCacheFileInfoStore"
"store.PostStore" *-- "localcachelayer.LocalCachePostStore"
"store.ReactionStore" *-- "localcachelayer.LocalCacheReactionStore"
"store.RoleStore" *-- "localcachelayer.LocalCacheRoleStore"
"store.SchemeStore" *-- "localcachelayer.LocalCacheSchemeStore"
"store.Store" *-- "localcachelayer.LocalCacheStore"
"store.TeamStore" *-- "localcachelayer.LocalCacheTeamStore"
"store.TermsOfServiceStore" *-- "localcachelayer.LocalCacheTermsOfServiceStore"
"store.UserStore" *-- "localcachelayer.LocalCacheUserStore"
"store.WebhookStore" *-- "localcachelayer.LocalCacheWebhookStore"

"store.TermsOfServiceStore" <|-- "localcachelayer.LocalCacheTermsOfServiceStore"

namespace main {
    class Foo << (S,Aquamarine) >> {
    }
    class MyPlugin << (S,Aquamarine) >> {
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)

    }
    class Plugin << (S,Aquamarine) >> {
        + ServeHTTP(_ *plugin.Context, w http.ResponseWriter, _ *http.Request) 
        + ServeHTTP(_ *plugin.Context, w http.ResponseWriter, r *http.Request) 
        + ServeMetrics(_ *plugin.Context, w http.ResponseWriter, r *http.Request) 
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)
        + WebSocketMessageHasBeenPosted(connID string, userID string, req *model.WebSocketRequest) 

    }
    class PluginUsingLogAPI << (S,Aquamarine) >> {
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)

    }
    class configuration << (S,Aquamarine) >> {
        + MyStringSetting string
        + MyIntSetting int
        + MyBoolSetting bool
        + MyStringSetting string
        + MyIntSetting int
        + MyBoolSetting bool

    }
    class methodData << (S,Aquamarine) >> {
        + ParamsToTrace <font color=blue>map</font>[string]bool
        + Params []methodParam
        + Results []string
        + Params []methodParam
        + Results []string
        + ParamsToTrace <font color=blue>map</font>[string]bool

    }
    class methodParam << (S,Aquamarine) >> {
        + Name string
        + Type string
        + Name string
        + Type string

    }
    class storeMetadata << (S,Aquamarine) >> {
        + Name string
        + Methods <font color=blue>map</font>[string]methodData
        + Name string
        + SubStores <font color=blue>map</font>[string]subStore
        + Methods <font color=blue>map</font>[string]methodData

    }
    class subStore << (S,Aquamarine) >> {
        + Methods <font color=blue>map</font>[string]methodData

    }
}
"plugin.MattermostPlugin" *-- "main.MyPlugin"
"plugin.MattermostPlugin" *-- "main.Plugin"
"plugin.MattermostPlugin" *-- "main.PluginUsingLogAPI"
"plugin_api_tests.BasicConfig" *-- "main.configuration"


namespace main_test {
    class MyPlugin << (S,Aquamarine) >> {
        + OnConfigurationChange() error
        + MessageWillBePosted(_ *plugin.Context, _ *model.Post) (*model.Post, string)

    }
}
"plugin.MattermostPlugin" *-- "main_test.MyPlugin"


namespace manualtesting {
    class TestEnvironment << (S,Aquamarine) >> {
        + Params <font color=blue>map</font>[string][]string
        + Client *model.Client4
        + CreatedTeamID string
        + CreatedUserID string
        + Context *web.Context
        + Writer http.ResponseWriter
        + Request *http.Request

    }
}


namespace migrations {
    class AdvancedPermissionsPhase2Progress << (S,Aquamarine) >> {
        + CurrentTable string
        + LastTeamID string
        + LastChannelID string
        + LastUserID string

        + ToJSON() string
        + IsValid() bool

    }
    class Scheduler << (S,Aquamarine) >> {
        + Enabled(_ *model.Config) bool
        + NextScheduleTime(cfg *model.Config, now time.Time, pendingJobs bool, lastSuccessfulJob *model.Job) *time.Time
        + ScheduleJob(c request.CTX, cfg *model.Config, pendingJobs bool, lastSuccessfulJob *model.Job) (*model.Job, *model.AppError)

    }
    class Worker << (S,Aquamarine) >> {
        + Run() 
        + Stop() 
        + JobChannel() <font color=blue>chan</font> model.Job
        + IsEnabled(_ *model.Config) bool
        + DoJob(job *model.Job) 

    }
}

"sqlstore.JSONSerializable" <|-- "migrations.AdvancedPermissionsPhase2Progress"
"jobs.Scheduler" <|-- "migrations.Scheduler"

namespace mocks {
    class AuditStore << (S,Aquamarine) >> {
        + Get(user_id string, offset int, limit int) (model.Audits, error)
        + PermanentDeleteByUser(userID string) error
        + Save(audit *model.Audit) error

    }
    class BotStore << (S,Aquamarine) >> {
        + Get(userID string, includeDeleted bool) (*model.Bot, error)
        + GetAll(options *model.BotGetOptions) ([]*model.Bot, error)
        + PermanentDelete(userID string) error
        + Save(bot *model.Bot) (*model.Bot, error)
        + Update(bot *model.Bot) (*model.Bot, error)

    }
    class ChannelMemberHistoryStore << (S,Aquamarine) >> {
        + DeleteOrphanedRows(limit int) (int64, error)
        + GetChannelsLeftSince(userID string, since int64) ([]string, error)
        + GetUsersInChannelDuring(startTime int64, endTime int64, channelID string) ([]*model.ChannelMemberHistoryResult, error)
        + LogJoinEvent(userID string, channelID string, joinTime int64) error
        + LogLeaveEvent(userID string, channelID string, leaveTime int64) error
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)

    }
    class ChannelStore << (S,Aquamarine) >> {
        + AnalyticsDeletedTypeCount(teamID string, channelType model.ChannelType) (int64, error)
        + AnalyticsTypeCount(teamID string, channelType model.ChannelType) (int64, error)
        + Autocomplete(rctx request.CTX, userID string, term string, includeDeleted bool, isGuest bool) (model.ChannelListWithTeamData, error)
        + AutocompleteInTeam(rctx request.CTX, teamID string, userID string, term string, includeDeleted bool, isGuest bool) (model.ChannelList, error)
        + AutocompleteInTeamForSearch(teamID string, userID string, term string, includeDeleted bool) (model.ChannelList, error)
        + ClearAllCustomRoleAssignments() error
        + ClearCaches() 
        + ClearMembersForUserCache() 
        + ClearSidebarOnTeamLeave(userID string, teamID string) error
        + CountPostsAfter(channelID string, timestamp int64, excludedUserID string) (int, int, error)
        + CountUrgentPostsAfter(channelID string, timestamp int64, excludedUserID string) (int, error)
        + CreateDirectChannel(ctx request.CTX, userID *model.User, otherUserID *model.User, channelOptions ...model.ChannelOption) (*model.Channel, error)
        + CreateInitialSidebarCategories(c request.CTX, userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, error)
        + CreateSidebarCategory(userID string, teamID string, newCategory *model.SidebarCategoryWithChannels) (*model.SidebarCategoryWithChannels, error)
        + Delete(channelID string, timestamp int64) error
        + DeleteAllSidebarChannelForChannel(channelID string) error
        + DeleteSidebarCategory(categoryID string) error
        + DeleteSidebarChannelsByPreferences(preferences model.Preferences) error
        + Get(id string, allowFromCache bool) (*model.Channel, error)
        + GetAll(teamID string) ([]*model.Channel, error)
        + GetAllChannelMemberIdsByChannelId(id string) ([]string, error)
        + GetAllChannelMembersForUser(userID string, allowFromCache bool, includeDeleted bool) (<font color=blue>map</font>[string]string, error)
        + GetAllChannelMembersNotifyPropsForChannel(channelID string, allowFromCache bool) (<font color=blue>map</font>[string]model.StringMap, error)
        + GetAllChannels(page int, perPage int, opts store.ChannelSearchOpts) (model.ChannelListWithTeamData, error)
        + GetAllChannelsCount(opts store.ChannelSearchOpts) (int64, error)
        + GetAllChannelsForExportAfter(limit int, afterID string) ([]*model.ChannelForExport, error)
        + GetAllDirectChannelsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.DirectChannelForExport, error)
        + GetByName(team_id string, name string, allowFromCache bool) (*model.Channel, error)
        + GetByNameIncludeDeleted(team_id string, name string, allowFromCache bool) (*model.Channel, error)
        + GetByNames(team_id string, names []string, allowFromCache bool) ([]*model.Channel, error)
        + GetByNamesIncludeDeleted(team_id string, names []string, allowFromCache bool) ([]*model.Channel, error)
        + GetChannelCounts(teamID string, userID string) (*model.ChannelCounts, error)
        + GetChannelMembersForExport(userID string, teamID string, includeArchivedChannel bool) ([]*model.ChannelMemberForExport, error)
        + GetChannelMembersTimezones(channelID string) ([]model.StringMap, error)
        + GetChannelUnread(channelID string, userID string) (*model.ChannelUnread, error)
        + GetChannels(teamID string, userID string, opts *model.ChannelSearchOpts) (model.ChannelList, error)
        + GetChannelsBatchForIndexing(startTime int64, startChannelID string, limit int) ([]*model.Channel, error)
        + GetChannelsByIds(channelIds []string, includeDeleted bool) ([]*model.Channel, error)
        + GetChannelsByScheme(schemeID string, offset int, limit int) (model.ChannelList, error)
        + GetChannelsByUser(userID string, includeDeleted bool, lastDeleteAt int, pageSize int, fromChannelID string) (model.ChannelList, error)
        + GetChannelsMemberCount(channelIDs []string) (<font color=blue>map</font>[string]int64, error)
        + GetChannelsWithTeamDataByIds(channelIds []string, includeDeleted bool) ([]*model.ChannelWithTeamData, error)
        + GetChannelsWithUnreadsAndWithMentions(ctx context.Context, channelIDs []string, userID string, userNotifyProps model.StringMap) ([]string, []string, <font color=blue>map</font>[string]int64, error)
        + GetDeleted(team_id string, offset int, limit int, userID string) (model.ChannelList, error)
        + GetDeletedByName(team_id string, name string) (*model.Channel, error)
        + GetFileCount(channelID string) (int64, error)
        + GetForPost(postID string) (*model.Channel, error)
        + GetGuestCount(channelID string, allowFromCache bool) (int64, error)
        + GetMany(ids []string, allowFromCache bool) (model.ChannelList, error)
        + GetMember(ctx context.Context, channelID string, userID string) (*model.ChannelMember, error)
        + GetMemberCount(channelID string, allowFromCache bool) (int64, error)
        + GetMemberCountFromCache(channelID string) int64
        + GetMemberCountsByGroup(ctx context.Context, channelID string, includeTimezones bool) ([]*model.ChannelMemberCountByGroup, error)
        + GetMemberForPost(postID string, userID string, includeArchivedChannels bool) (*model.ChannelMember, error)
        + GetMemberLastViewedAt(ctx context.Context, channelID string, userID string) (int64, error)
        + GetMembers(channelID string, offset int, limit int) (model.ChannelMembers, error)
        + GetMembersByChannelIds(channelIds []string, userID string) (model.ChannelMembers, error)
        + GetMembersByIds(channelID string, userIds []string) (model.ChannelMembers, error)
        + GetMembersForUser(teamID string, userID string) (model.ChannelMembers, error)
        + GetMembersForUserWithPagination(userID string, page int, perPage int) (model.ChannelMembersWithTeamData, error)
        + GetMembersInfoByChannelIds(channelIDs []string) (<font color=blue>map</font>[string][]*model.User, error)
        + GetMoreChannels(teamID string, userID string, offset int, limit int) (model.ChannelList, error)
        + GetPinnedPostCount(channelID string, allowFromCache bool) (int64, error)
        + GetPinnedPosts(channelID string) (*model.PostList, error)
        + GetPrivateChannelsForTeam(teamID string, offset int, limit int) (model.ChannelList, error)
        + GetPublicChannelsByIdsForTeam(teamID string, channelIds []string) (model.ChannelList, error)
        + GetPublicChannelsForTeam(teamID string, offset int, limit int) (model.ChannelList, error)
        + GetSidebarCategories(userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, error)
        + GetSidebarCategoriesForTeamForUser(userID string, teamID string) (*model.OrderedSidebarCategories, error)
        + GetSidebarCategory(categoryID string) (*model.SidebarCategoryWithChannels, error)
        + GetSidebarCategoryOrder(userID string, teamID string) ([]string, error)
        + GetTeamChannels(teamID string) (model.ChannelList, error)
        + GetTeamForChannel(channelID string) (*model.Team, error)
        + GetTeamMembersForChannel(channelID string) ([]string, error)
        + GroupSyncedChannelCount() (int64, error)
        + IncrementMentionCount(channelID string, userIDs []string, isRoot bool, isUrgent bool) error
        + InvalidateAllChannelMembersForUser(userID string) 
        + InvalidateCacheForChannelMembersNotifyProps(channelID string) 
        + InvalidateChannel(id string) 
        + InvalidateChannelByName(teamID string, name string) 
        + InvalidateGuestCount(channelID string) 
        + InvalidateMemberCount(channelID string) 
        + InvalidatePinnedPostCount(channelID string) 
        + MigrateChannelMembers(fromChannelID string, fromUserID string) (<font color=blue>map</font>[string]string, error)
        + PatchMultipleMembersNotifyProps(members []*model.ChannelMemberIdentifier, notifyProps <font color=blue>map</font>[string]string) ([]*model.ChannelMember, error)
        + PermanentDelete(ctx request.CTX, channelID string) error
        + PermanentDeleteByTeam(teamID string) error
        + PermanentDeleteMembersByChannel(ctx request.CTX, channelID string) error
        + PermanentDeleteMembersByUser(ctx request.CTX, userID string) error
        + RemoveAllDeactivatedMembers(ctx request.CTX, channelID string) error
        + RemoveMember(ctx request.CTX, channelID string, userID string) error
        + RemoveMembers(ctx request.CTX, channelID string, userIds []string) error
        + ResetAllChannelSchemes() error
        + Restore(channelID string, timestamp int64) error
        + Save(rctx request.CTX, channel *model.Channel, maxChannelsPerTeam int64) (*model.Channel, error)
        + SaveDirectChannel(ctx request.CTX, channel *model.Channel, member1 *model.ChannelMember, member2 *model.ChannelMember) (*model.Channel, error)
        + SaveMember(rctx request.CTX, member *model.ChannelMember) (*model.ChannelMember, error)
        + SaveMultipleMembers(members []*model.ChannelMember) ([]*model.ChannelMember, error)
        + SearchAllChannels(term string, opts store.ChannelSearchOpts) (model.ChannelListWithTeamData, int64, error)
        + SearchArchivedInTeam(teamID string, term string, userID string) (model.ChannelList, error)
        + SearchForUserInTeam(userID string, teamID string, term string, includeDeleted bool) (model.ChannelList, error)
        + SearchGroupChannels(userID string, term string) (model.ChannelList, error)
        + SearchInTeam(teamID string, term string, includeDeleted bool) (model.ChannelList, error)
        + SearchMore(userID string, teamID string, term string) (model.ChannelList, error)
        + SetDeleteAt(channelID string, deleteAt int64, updateAt int64) error
        + SetShared(channelId string, shared bool) error
        + Update(ctx request.CTX, channel *model.Channel) (*model.Channel, error)
        + UpdateLastViewedAt(channelIds []string, userID string) (<font color=blue>map</font>[string]int64, error)
        + UpdateLastViewedAtPost(unreadPost *model.Post, userID string, mentionCount int, mentionCountRoot int, urgentMentionCount int, setUnreadCountRoot bool) (*model.ChannelUnreadAt, error)
        + UpdateMember(ctx request.CTX, member *model.ChannelMember) (*model.ChannelMember, error)
        + UpdateMemberNotifyProps(channelID string, userID string, props <font color=blue>map</font>[string]string) (*model.ChannelMember, error)
        + UpdateMembersRole(channelID string, userIDs []string) error
        + UpdateMultipleMembers(members []*model.ChannelMember) ([]*model.ChannelMember, error)
        + UpdateSidebarCategories(userID string, teamID string, categories []*model.SidebarCategoryWithChannels) ([]*model.SidebarCategoryWithChannels, []*model.SidebarCategoryWithChannels, error)
        + UpdateSidebarCategoryOrder(userID string, teamID string, categoryOrder []string) error
        + UpdateSidebarChannelCategoryOnMove(channel *model.Channel, newTeamID string) error
        + UpdateSidebarChannelsByPreferences(preferences model.Preferences) error
        + UserBelongsToChannels(userID string, channelIds []string) (bool, error)

    }
    class ClusterDiscoveryStore << (S,Aquamarine) >> {
        + Cleanup() error
        + Delete(discovery *model.ClusterDiscovery) (bool, error)
        + Exists(discovery *model.ClusterDiscovery) (bool, error)
        + GetAll(discoveryType string, clusterName string) ([]*model.ClusterDiscovery, error)
        + Save(discovery *model.ClusterDiscovery) error
        + SetLastPingAt(discovery *model.ClusterDiscovery) error

    }
    class CommandStore << (S,Aquamarine) >> {
        + AnalyticsCommandCount(teamID string) (int64, error)
        + Delete(commandID string, timestamp int64) error
        + Get(id string) (*model.Command, error)
        + GetByTeam(teamID string) ([]*model.Command, error)
        + GetByTrigger(teamID string, trigger string) (*model.Command, error)
        + PermanentDeleteByTeam(teamID string) error
        + PermanentDeleteByUser(userID string) error
        + Save(webhook *model.Command) (*model.Command, error)
        + Update(hook *model.Command) (*model.Command, error)

    }
    class CommandWebhookStore << (S,Aquamarine) >> {
        + Cleanup() 
        + Get(id string) (*model.CommandWebhook, error)
        + Save(webhook *model.CommandWebhook) (*model.CommandWebhook, error)
        + TryUse(id string, limit int) error

    }
    class ComplianceStore << (S,Aquamarine) >> {
        + ComplianceExport(compliance *model.Compliance, cursor model.ComplianceExportCursor, limit int) ([]*model.CompliancePost, model.ComplianceExportCursor, error)
        + Get(id string) (*model.Compliance, error)
        + GetAll(offset int, limit int) (model.Compliances, error)
        + MessageExport(c request.CTX, cursor model.MessageExportCursor, limit int) ([]*model.MessageExport, model.MessageExportCursor, error)
        + Save(compliance *model.Compliance) (*model.Compliance, error)
        + Update(compliance *model.Compliance) (*model.Compliance, error)

    }
    class DesktopTokensStore << (S,Aquamarine) >> {
        + Delete(token string) error
        + DeleteByUserId(userId string) error
        + DeleteOlderThan(minCreatedAt int64) error
        + GetUserId(token string, minCreatedAt int64) (*string, error)
        + Insert(token string, createAt int64, userId string) error

    }
    class DraftStore << (S,Aquamarine) >> {
        + Delete(userID string, channelID string, rootID string) error
        + DeleteDraftsAssociatedWithPost(channelID string, rootID string) error
        + DeleteEmptyDraftsByCreateAtAndUserId(createAt int64, userId string) error
        + DeleteOrphanDraftsByCreateAtAndUserId(createAt int64, userId string) error
        + Get(userID string, channelID string, rootID string, includeDeleted bool) (*model.Draft, error)
        + GetDraftsForUser(userID string, teamID string) ([]*model.Draft, error)
        + GetLastCreateAtAndUserIdValuesForEmptyDraftsMigration(createAt int64, userId string) (int64, string, error)
        + Upsert(d *model.Draft) (*model.Draft, error)

    }
    class EmojiStore << (S,Aquamarine) >> {
        + Delete(emoji *model.Emoji, timestamp int64) error
        + Get(c request.CTX, id string, allowFromCache bool) (*model.Emoji, error)
        + GetByName(c request.CTX, name string, allowFromCache bool) (*model.Emoji, error)
        + GetList(offset int, limit int, sort string) ([]*model.Emoji, error)
        + GetMultipleByName(c request.CTX, names []string) ([]*model.Emoji, error)
        + Save(emoji *model.Emoji) (*model.Emoji, error)
        + Search(name string, prefixOnly bool, limit int) ([]*model.Emoji, error)

    }
    class FileInfoStore << (S,Aquamarine) >> {
        + AttachToPost(c request.CTX, fileID string, postID string, channelID string, creatorID string) error
        + ClearCaches() 
        + CountAll() (int64, error)
        + DeleteForPost(c request.CTX, postID string) (string, error)
        + Get(id string) (*model.FileInfo, error)
        + GetByIds(ids []string) ([]*model.FileInfo, error)
        + GetByPath(path string) (*model.FileInfo, error)
        + GetFilesBatchForIndexing(startTime int64, startFileID string, includeDeleted bool, limit int) ([]*model.FileForIndexing, error)
        + GetForPost(postID string, readFromMaster bool, includeDeleted bool, allowFromCache bool) ([]*model.FileInfo, error)
        + GetForUser(userID string) ([]*model.FileInfo, error)
        + GetFromMaster(id string) (*model.FileInfo, error)
        + GetStorageUsage(allowFromCache bool, includeDeleted bool) (int64, error)
        + GetUptoNSizeFileTime(n int64) (int64, error)
        + GetWithOptions(page int, perPage int, opt *model.GetFileInfosOptions) ([]*model.FileInfo, error)
        + InvalidateFileInfosForPostCache(postID string, deleted bool) 
        + PermanentDelete(c request.CTX, fileID string) error
        + PermanentDeleteBatch(ctx request.CTX, endTime int64, limit int64) (int64, error)
        + PermanentDeleteByUser(ctx request.CTX, userID string) (int64, error)
        + Save(ctx request.CTX, info *model.FileInfo) (*model.FileInfo, error)
        + Search(ctx request.CTX, paramsList []*model.SearchParams, userID string, teamID string, page int, perPage int) (*model.FileInfoList, error)
        + SetContent(ctx request.CTX, fileID string, content string) error
        + Upsert(rctx request.CTX, info *model.FileInfo) (*model.FileInfo, error)

    }
    class GroupStore << (S,Aquamarine) >> {
        + AdminRoleGroupsForSyncableMember(userID string, syncableID string, syncableType model.GroupSyncableType) ([]string, error)
        + ChannelMembersMinusGroupMembers(channelID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, error)
        + ChannelMembersToAdd(since int64, channelID *string, includeRemovedMembers bool) ([]*model.UserChannelIDPair, error)
        + ChannelMembersToRemove(channelID *string) ([]*model.ChannelMember, error)
        + CountChannelMembersMinusGroupMembers(channelID string, groupIDs []string) (int64, error)
        + CountGroupsByChannel(channelID string, opts model.GroupSearchOpts) (int64, error)
        + CountGroupsByTeam(teamID string, opts model.GroupSearchOpts) (int64, error)
        + CountTeamMembersMinusGroupMembers(teamID string, groupIDs []string) (int64, error)
        + Create(group *model.Group) (*model.Group, error)
        + CreateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, error)
        + CreateWithUserIds(group *model.GroupWithUserIds) (*model.Group, error)
        + Delete(groupID string) (*model.Group, error)
        + DeleteGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, error)
        + DeleteMember(groupID string, userID string) (*model.GroupMember, error)
        + DeleteMembers(groupID string, userIDs []string) ([]*model.GroupMember, error)
        + DistinctGroupMemberCount() (int64, error)
        + DistinctGroupMemberCountForSource(source model.GroupSource) (int64, error)
        + Get(groupID string) (*model.Group, error)
        + GetAllBySource(groupSource model.GroupSource) ([]*model.Group, error)
        + GetAllGroupSyncablesByGroupId(groupID string, syncableType model.GroupSyncableType) ([]*model.GroupSyncable, error)
        + GetByIDs(groupIDs []string) ([]*model.Group, error)
        + GetByName(name string, opts model.GroupSearchOpts) (*model.Group, error)
        + GetByRemoteID(remoteID string, groupSource model.GroupSource) (*model.Group, error)
        + GetByUser(userID string) ([]*model.Group, error)
        + GetGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, error)
        + GetGroups(page int, perPage int, opts model.GroupSearchOpts, viewRestrictions *model.ViewUsersRestrictions) ([]*model.Group, error)
        + GetGroupsAssociatedToChannelsByTeam(teamID string, opts model.GroupSearchOpts) (<font color=blue>map</font>[string][]*model.GroupWithSchemeAdmin, error)
        + GetGroupsByChannel(channelID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, error)
        + GetGroupsByTeam(teamID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, error)
        + GetMember(groupID string, userID string) (*model.GroupMember, error)
        + GetMemberCount(groupID string) (int64, error)
        + GetMemberCountWithRestrictions(groupID string, viewRestrictions *model.ViewUsersRestrictions) (int64, error)
        + GetMemberUsers(groupID string) ([]*model.User, error)
        + GetMemberUsersInTeam(groupID string, teamID string) ([]*model.User, error)
        + GetMemberUsersNotInChannel(groupID string, channelID string) ([]*model.User, error)
        + GetMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetMemberUsersSortedPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions, teammateNameDisplay string) ([]*model.User, error)
        + GetNonMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GroupChannelCount() (int64, error)
        + GroupCount() (int64, error)
        + GroupCountBySource(source model.GroupSource) (int64, error)
        + GroupCountWithAllowReference() (int64, error)
        + GroupMemberCount() (int64, error)
        + GroupTeamCount() (int64, error)
        + PermanentDeleteMembersByUser(userID string) error
        + PermittedSyncableAdmins(syncableID string, syncableType model.GroupSyncableType) ([]string, error)
        + Restore(groupID string) (*model.Group, error)
        + TeamMembersMinusGroupMembers(teamID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, error)
        + TeamMembersToAdd(since int64, teamID *string, includeRemovedMembers bool) ([]*model.UserTeamIDPair, error)
        + TeamMembersToRemove(teamID *string) ([]*model.TeamMember, error)
        + Update(group *model.Group) (*model.Group, error)
        + UpdateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, error)
        + UpsertMember(groupID string, userID string) (*model.GroupMember, error)
        + UpsertMembers(groupID string, userIDs []string) ([]*model.GroupMember, error)

    }
    class JobStore << (S,Aquamarine) >> {
        + Cleanup(expiryTime int64, batchSize int) error
        + Delete(id string) (string, error)
        + Get(c request.CTX, id string) (*model.Job, error)
        + GetAllByStatus(c request.CTX, status string) ([]*model.Job, error)
        + GetAllByType(c request.CTX, jobType string) ([]*model.Job, error)
        + GetAllByTypeAndStatus(c request.CTX, jobType string, status string) ([]*model.Job, error)
        + GetAllByTypePage(c request.CTX, jobType string, offset int, limit int) ([]*model.Job, error)
        + GetAllByTypesPage(c request.CTX, jobTypes []string, offset int, limit int) ([]*model.Job, error)
        + GetCountByStatusAndType(status string, jobType string) (int64, error)
        + GetNewestJobByStatusAndType(status string, jobType string) (*model.Job, error)
        + GetNewestJobByStatusesAndType(statuses []string, jobType string) (*model.Job, error)
        + Save(job *model.Job) (*model.Job, error)
        + SaveOnce(job *model.Job) (*model.Job, error)
        + UpdateOptimistically(job *model.Job, currentStatus string) (bool, error)
        + UpdateStatus(id string, status string) (*model.Job, error)
        + UpdateStatusOptimistically(id string, currentStatus string, newStatus string) (bool, error)

    }
    class LicenseStore << (S,Aquamarine) >> {
        + Get(c request.CTX, id string) (*model.LicenseRecord, error)
        + GetAll() ([]*model.LicenseRecord, error)
        + Save(license *model.LicenseRecord) error

    }
    class LicenseValidatorIface << (S,Aquamarine) >> {
        + LicenseFromBytes(licenseBytes []byte) (*model.License, *model.AppError)
        + ValidateLicense(signed []byte) (bool, string)

    }
    class LinkMetadataStore << (S,Aquamarine) >> {
        + Get(url string, timestamp int64) (*model.LinkMetadata, error)
        + Save(linkMetadata *model.LinkMetadata) (*model.LinkMetadata, error)

    }
    class NotifyAdminStore << (S,Aquamarine) >> {
        + DeleteBefore(trial bool, now int64) error
        + Get(trial bool) ([]*model.NotifyAdminData, error)
        + GetDataByUserIdAndFeature(userId string, feature model.MattermostFeature) ([]*model.NotifyAdminData, error)
        + Save(data *model.NotifyAdminData) (*model.NotifyAdminData, error)
        + Update(userId string, requiredPlan string, requiredFeature model.MattermostFeature, now int64) error

    }
    class OAuthStore << (S,Aquamarine) >> {
        + DeleteApp(id string) error
        + GetAccessData(token string) (*model.AccessData, error)
        + GetAccessDataByRefreshToken(token string) (*model.AccessData, error)
        + GetAccessDataByUserForApp(userID string, clientId string) ([]*model.AccessData, error)
        + GetApp(id string) (*model.OAuthApp, error)
        + GetAppByUser(userID string, offset int, limit int) ([]*model.OAuthApp, error)
        + GetApps(offset int, limit int) ([]*model.OAuthApp, error)
        + GetAuthData(code string) (*model.AuthData, error)
        + GetAuthorizedApps(userID string, offset int, limit int) ([]*model.OAuthApp, error)
        + GetPreviousAccessData(userID string, clientId string) (*model.AccessData, error)
        + PermanentDeleteAuthDataByUser(userID string) error
        + RemoveAccessData(token string) error
        + RemoveAllAccessData() error
        + RemoveAuthData(code string) error
        + RemoveAuthDataByClientId(clientId string, userId string) error
        + RemoveAuthDataByUserId(userId string) error
        + SaveAccessData(accessData *model.AccessData) (*model.AccessData, error)
        + SaveApp(app *model.OAuthApp) (*model.OAuthApp, error)
        + SaveAuthData(authData *model.AuthData) (*model.AuthData, error)
        + UpdateAccessData(accessData *model.AccessData) (*model.AccessData, error)
        + UpdateApp(app *model.OAuthApp) (*model.OAuthApp, error)

    }
    class OutgoingOAuthConnectionStore << (S,Aquamarine) >> {
        + DeleteConnection(c request.CTX, id string) error
        + GetConnection(c request.CTX, id string) (*model.OutgoingOAuthConnection, error)
        + GetConnections(c request.CTX, filters model.OutgoingOAuthConnectionGetConnectionsFilter) ([]*model.OutgoingOAuthConnection, error)
        + SaveConnection(c request.CTX, conn *model.OutgoingOAuthConnection) (*model.OutgoingOAuthConnection, error)
        + UpdateConnection(c request.CTX, conn *model.OutgoingOAuthConnection) (*model.OutgoingOAuthConnection, error)

    }
    class PluginStore << (S,Aquamarine) >> {
        + CompareAndDelete(keyVal *model.PluginKeyValue, oldValue []byte) (bool, error)
        + CompareAndSet(keyVal *model.PluginKeyValue, oldValue []byte) (bool, error)
        + Delete(pluginID string, key string) error
        + DeleteAllExpired() error
        + DeleteAllForPlugin(PluginID string) error
        + Get(pluginID string, key string) (*model.PluginKeyValue, error)
        + List(pluginID string, page int, perPage int) ([]string, error)
        + SaveOrUpdate(keyVal *model.PluginKeyValue) (*model.PluginKeyValue, error)
        + SetWithOptions(pluginID string, key string, value []byte, options model.PluginKVSetOptions) (bool, error)

    }
    class PostAcknowledgementStore << (S,Aquamarine) >> {
        + Delete(acknowledgement *model.PostAcknowledgement) error
        + Get(postID string, userID string) (*model.PostAcknowledgement, error)
        + GetForPost(postID string) ([]*model.PostAcknowledgement, error)
        + GetForPosts(postIds []string) ([]*model.PostAcknowledgement, error)
        + Save(postID string, userID string, acknowledgedAt int64) (*model.PostAcknowledgement, error)

    }
    class PostPersistentNotificationStore << (S,Aquamarine) >> {
        + Delete(postIds []string) error
        + DeleteByChannel(channelIds []string) error
        + DeleteByTeam(teamIds []string) error
        + DeleteExpired(maxSentCount int16) error
        + Get(params model.GetPersistentNotificationsPostsParams) ([]*model.PostPersistentNotifications, error)
        + GetSingle(postID string) (*model.PostPersistentNotifications, error)
        + UpdateLastActivity(postIds []string) error

    }
    class PostPriorityStore << (S,Aquamarine) >> {
        + GetForPost(postId string) (*model.PostPriority, error)
        + GetForPosts(ids []string) ([]*model.PostPriority, error)

    }
    class PostStore << (S,Aquamarine) >> {
        + AnalyticsPostCount(options *model.PostCountOptions) (int64, error)
        + AnalyticsPostCountsByDay(options *model.AnalyticsPostCountsOptions) (model.AnalyticsRows, error)
        + AnalyticsUserCountsWithPostsByDay(teamID string) (model.AnalyticsRows, error)
        + ClearCaches() 
        + Delete(rctx request.CTX, postID string, timestamp int64, deleteByID string) error
        + Get(ctx context.Context, id string, opts model.GetPostsOptions, userID string, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetDirectPostParentsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.DirectPostForExport, error)
        + GetEditHistoryForPost(postId string) ([]*model.Post, error)
        + GetEtag(channelID string, allowFromCache bool, collapsedThreads bool) string
        + GetFlaggedPosts(userID string, offset int, limit int) (*model.PostList, error)
        + GetFlaggedPostsForChannel(userID string, channelID string, offset int, limit int) (*model.PostList, error)
        + GetFlaggedPostsForTeam(userID string, teamID string, offset int, limit int) (*model.PostList, error)
        + GetMaxPostSize() int
        + GetNthRecentPostTime(n int64) (int64, error)
        + GetOldest() (*model.Post, error)
        + GetOldestEntityCreationTime() (int64, error)
        + GetParentsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.PostForExport, error)
        + GetPostAfterTime(channelID string, timestamp int64, collapsedThreads bool) (*model.Post, error)
        + GetPostIdAfterTime(channelID string, timestamp int64, collapsedThreads bool) (string, error)
        + GetPostIdBeforeTime(channelID string, timestamp int64, collapsedThreads bool) (string, error)
        + GetPostReminderMetadata(postID string) (*store.PostReminderMetadata, error)
        + GetPostReminders(now int64) ([]*model.PostReminder, error)
        + GetPosts(options model.GetPostsOptions, allowFromCache bool, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsAfter(options model.GetPostsOptions, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsBatchForIndexing(startTime int64, startPostID string, limit int) ([]*model.PostForIndexing, error)
        + GetPostsBefore(options model.GetPostsOptions, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsByIds(postIds []string) ([]*model.Post, error)
        + GetPostsByThread(threadID string, since int64) ([]*model.Post, error)
        + GetPostsCreatedAt(channelID string, timestamp int64) ([]*model.Post, error)
        + GetPostsSince(options model.GetPostsSinceOptions, allowFromCache bool, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsSinceForSync(options model.GetPostsSinceForSyncOptions, cursor model.GetPostsSinceForSyncCursor, limit int) ([]*model.Post, model.GetPostsSinceForSyncCursor, error)
        + GetRepliesForExport(parentID string) ([]*model.ReplyForExport, error)
        + GetSingle(id string, inclDeleted bool) (*model.Post, error)
        + HasAutoResponsePostByUserSince(options model.GetPostsSinceOptions, userId string) (bool, error)
        + InvalidateLastPostTimeCache(channelID string) 
        + Overwrite(rctx request.CTX, post *model.Post) (*model.Post, error)
        + OverwriteMultiple(posts []*model.Post) ([]*model.Post, int, error)
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + PermanentDeleteByChannel(rctx request.CTX, channelID string) error
        + PermanentDeleteByUser(rctx request.CTX, userID string) error
        + Save(rctx request.CTX, post *model.Post) (*model.Post, error)
        + SaveMultiple(posts []*model.Post) ([]*model.Post, int, error)
        + Search(teamID string, userID string, params *model.SearchParams) (*model.PostList, error)
        + SearchPostsForUser(rctx request.CTX, paramsList []*model.SearchParams, userID string, teamID string, page int, perPage int) (*model.PostSearchResults, error)
        + SetPostReminder(reminder *model.PostReminder) error
        + Update(rctx request.CTX, newPost *model.Post, oldPost *model.Post) (*model.Post, error)

    }
    class PreferenceStore << (S,Aquamarine) >> {
        + CleanupFlagsBatch(limit int64) (int64, error)
        + Delete(userID string, category string, name string) error
        + DeleteCategory(userID string, category string) error
        + DeleteCategoryAndName(category string, name string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + Get(userID string, category string, name string) (*model.Preference, error)
        + GetAll(userID string) (model.Preferences, error)
        + GetCategory(userID string, category string) (model.Preferences, error)
        + GetCategoryAndName(category string, nane string) (model.Preferences, error)
        + PermanentDeleteByUser(userID string) error
        + Save(preferences model.Preferences) error

    }
    class ProductNoticesStore << (S,Aquamarine) >> {
        + Clear(notices []string) error
        + ClearOldNotices(currentNotices model.ProductNotices) error
        + GetViews(userID string) ([]model.ProductNoticeViewState, error)
        + View(userID string, notices []string) error

    }
    class ReactionStore << (S,Aquamarine) >> {
        + BulkGetForPosts(postIds []string) ([]*model.Reaction, error)
        + Delete(reaction *model.Reaction) (*model.Reaction, error)
        + DeleteAllWithEmojiName(emojiName string) error
        + DeleteOrphanedRowsByIds(r *model.RetentionIdsForDeletion) error
        + ExistsOnPost(postId string, emojiName string) (bool, error)
        + GetForPost(postID string, allowFromCache bool) ([]*model.Reaction, error)
        + GetForPostSince(postId string, since int64, excludeRemoteId string, inclDeleted bool) ([]*model.Reaction, error)
        + GetUniqueCountForPost(postId string) (int, error)
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + PermanentDeleteByUser(userID string) error
        + Save(reaction *model.Reaction) (*model.Reaction, error)

    }
    class RemoteClusterStore << (S,Aquamarine) >> {
        + Delete(remoteClusterId string) (bool, error)
        + Get(remoteClusterId string) (*model.RemoteCluster, error)
        + GetAll(filter model.RemoteClusterQueryFilter) ([]*model.RemoteCluster, error)
        + GetByPluginID(pluginID string) (*model.RemoteCluster, error)
        + Save(rc *model.RemoteCluster) (*model.RemoteCluster, error)
        + SetLastPingAt(remoteClusterId string) error
        + Update(rc *model.RemoteCluster) (*model.RemoteCluster, error)
        + UpdateTopics(remoteClusterId string, topics string) (*model.RemoteCluster, error)

    }
    class RetentionPolicyStore << (S,Aquamarine) >> {
        + AddChannels(policyId string, channelIds []string) error
        + AddTeams(policyId string, teamIds []string) error
        + Delete(id string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + Get(id string) (*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + GetAll(offset int, limit int) ([]*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + GetChannelPoliciesCountForUser(userID string) (int64, error)
        + GetChannelPoliciesForUser(userID string, offset int, limit int) ([]*model.RetentionPolicyForChannel, error)
        + GetChannels(policyId string, offset int, limit int) (model.ChannelListWithTeamData, error)
        + GetChannelsCount(policyId string) (int64, error)
        + GetCount() (int64, error)
        + GetIdsForDeletionByTableName(tableName string, limit int) ([]*model.RetentionIdsForDeletion, error)
        + GetTeamPoliciesCountForUser(userID string) (int64, error)
        + GetTeamPoliciesForUser(userID string, offset int, limit int) ([]*model.RetentionPolicyForTeam, error)
        + GetTeams(policyId string, offset int, limit int) ([]*model.Team, error)
        + GetTeamsCount(policyId string) (int64, error)
        + Patch(patch *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + RemoveChannels(policyId string, channelIds []string) error
        + RemoveTeams(policyId string, teamIds []string) error
        + Save(policy *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, error)

    }
    class RoleStore << (S,Aquamarine) >> {
        + AllChannelSchemeRoles() ([]*model.Role, error)
        + ChannelHigherScopedPermissions(roleNames []string) (<font color=blue>map</font>[string]*model.RolePermissions, error)
        + ChannelRolesUnderTeamRole(roleName string) ([]*model.Role, error)
        + Delete(roleID string) (*model.Role, error)
        + Get(roleID string) (*model.Role, error)
        + GetAll() ([]*model.Role, error)
        + GetByName(ctx context.Context, name string) (*model.Role, error)
        + GetByNames(names []string) ([]*model.Role, error)
        + PermanentDeleteAll() error
        + Save(role *model.Role) (*model.Role, error)

    }
    class SchemeStore << (S,Aquamarine) >> {
        + CountByScope(scope string) (int64, error)
        + CountWithoutPermission(scope string, permissionID string, roleScope model.RoleScope, roleType model.RoleType) (int64, error)
        + Delete(schemeID string) (*model.Scheme, error)
        + Get(schemeID string) (*model.Scheme, error)
        + GetAllPage(scope string, offset int, limit int) ([]*model.Scheme, error)
        + GetByName(schemeName string) (*model.Scheme, error)
        + PermanentDeleteAll() error
        + Save(scheme *model.Scheme) (*model.Scheme, error)

    }
    class ServiceInterface << (S,Aquamarine) >> {
        + AddNotificationEmailToBatch(user *model.User, post *model.Post, team *model.Team) *model.AppError
        + CreateVerifyEmailToken(userID string, newEmail string) (*model.Token, error)
        + GenerateHyperlinkForChannels(postMessage string, teamName string, teamURL string) (string, error)
        + GetMessageForNotification(post *model.Post, teamName string, siteUrl string, translateFunc i18n.TranslateFunc) string
        + GetPerDayEmailRateLimiter() *throttled.GCRARateLimiter
        + InitEmailBatching() 
        + NewEmailTemplateData(locale string) templates.Data
        + SendChangeUsernameEmail(newUsername string, _a1 string, locale string, siteURL string) error
        + SendCloudRenewalEmail30(_a0 string, locale string, siteURL string) error
        + SendCloudRenewalEmail60(_a0 string, locale string, siteURL string) error
        + SendCloudRenewalEmail7(_a0 string, locale string, siteURL string) error
        + SendCloudUpgradeConfirmationEmail(userEmail string, name string, trialEndDate string, locale string, siteURL string, workspaceName string, isYearly bool, embeddedFiles <font color=blue>map</font>[string]io.Reader) error
        + SendCloudWelcomeEmail(userEmail string, locale string, teamInviteID string, workSpaceName string, dns string, siteURL string) error
        + SendDeactivateAccountEmail(_a0 string, locale string, siteURL string) error
        + SendDelinquencyEmail14(_a0 string, locale string, siteURL string, planName string) error
        + SendDelinquencyEmail30(_a0 string, locale string, siteURL string, planName string) error
        + SendDelinquencyEmail45(_a0 string, locale string, siteURL string, planName string, delinquencyDate string) error
        + SendDelinquencyEmail60(_a0 string, locale string, siteURL string) error
        + SendDelinquencyEmail7(_a0 string, locale string, siteURL string, planName string) error
        + SendDelinquencyEmail75(_a0 string, locale string, siteURL string, planName string, delinquencyDate string) error
        + SendDelinquencyEmail90(_a0 string, locale string, siteURL string) error
        + SendEmailChangeEmail(oldEmail string, newEmail string, locale string, siteURL string) error
        + SendEmailChangeVerifyEmail(newUserEmail string, locale string, siteURL string, token string) error
        + SendGuestInviteEmails(team *model.Team, channels []*model.Channel, senderName string, senderUserId string, senderProfileImage []byte, invites []string, siteURL string, message string, errorWhenNotSent bool, isSystemAdmin bool, isFirstAdmin bool) error
        + SendIPFiltersChangedEmail(_a0 string, userWhoChangedFilter *model.User, siteURL string, portalURL string, locale string, isWorkspaceOwner bool) error
        + SendInviteEmails(team *model.Team, senderName string, senderUserId string, invites []string, siteURL string, reminderData *model.TeamInviteReminderData, errorWhenNotSent bool, isSystemAdmin bool, isFirstAdmin bool) error
        + SendInviteEmailsToTeamAndChannels(team *model.Team, channels []*model.Channel, senderName string, senderUserId string, senderProfileImage []byte, invites []string, siteURL string, reminderData *model.TeamInviteReminderData, message string, errorWhenNotSent bool, isSystemAdmin bool, isFirstAdmin bool) ([]*model.EmailInviteWithError, error)
        + SendLicenseUpForRenewalEmail(_a0 string, name string, locale string, siteURL string, ctaTitle string, ctaLink string, ctaText string, daysToExpiration int) error
        + SendMailWithEmbeddedFiles(to string, subject string, htmlBody string, embeddedFiles <font color=blue>map</font>[string]io.Reader, messageID string, inReplyTo string, references string, category string) error
        + SendMfaChangeEmail(_a0 string, activated bool, locale string, siteURL string) error
        + SendNoCardPaymentFailedEmail(_a0 string, locale string, siteURL string) error
        + SendNotificationMail(to string, subject string, htmlBody string) error
        + SendPasswordChangeEmail(_a0 string, method string, locale string, siteURL string) error
        + SendPasswordResetEmail(_a0 string, token *model.Token, locale string, siteURL string) (bool, error)
        + SendPaymentFailedEmail(_a0 string, locale string, failedPayment *model.FailedPayment, planName string, siteURL string) (bool, error)
        + SendRemoveExpiredLicenseEmail(ctaText string, ctaLink string, _a2 string, locale string, siteURL string) error
        + SendSignInChangeEmail(_a0 string, method string, locale string, siteURL string) error
        + SendUserAccessTokenAddedEmail(_a0 string, locale string, siteURL string) error
        + SendVerifyEmail(userEmail string, locale string, siteURL string, token string, redirect string) error
        + SendWelcomeEmail(userID string, _a1 string, verified bool, disableWelcomeEmail bool, locale string, siteURL string, redirect string) error
        + SetStore(st store.Store) 
        + Stop() 

    }
    class SessionStore << (S,Aquamarine) >> {
        + AnalyticsSessionCount() (int64, error)
        + Cleanup(expiryTime int64, batchSize int64) error
        + Get(c request.CTX, sessionIDOrToken string) (*model.Session, error)
        + GetSessions(c request.CTX, userID string) ([]*model.Session, error)
        + GetSessionsExpired(thresholdMillis int64, mobileOnly bool, unnotifiedOnly bool) ([]*model.Session, error)
        + GetSessionsWithActiveDeviceIds(userID string) ([]*model.Session, error)
        + PermanentDeleteSessionsByUser(teamID string) error
        + Remove(sessionIDOrToken string) error
        + RemoveAllSessions() error
        + Save(c request.CTX, session *model.Session) (*model.Session, error)
        + UpdateDeviceId(id string, deviceID string, expiresAt int64) (string, error)
        + UpdateExpiredNotify(sessionid string, notified bool) error
        + UpdateExpiresAt(sessionID string, timestamp int64) error
        + UpdateLastActivityAt(sessionID string, timestamp int64) error
        + UpdateProps(session *model.Session) error
        + UpdateRoles(userID string, roles string) (string, error)

    }
    class SharedChannelStore << (S,Aquamarine) >> {
        + Delete(channelId string) (bool, error)
        + DeleteRemote(remoteId string) (bool, error)
        + Get(channelId string) (*model.SharedChannel, error)
        + GetAll(offset int, limit int, opts model.SharedChannelFilterOpts) ([]*model.SharedChannel, error)
        + GetAllCount(opts model.SharedChannelFilterOpts) (int64, error)
        + GetAttachment(fileId string, remoteId string) (*model.SharedChannelAttachment, error)
        + GetRemote(id string) (*model.SharedChannelRemote, error)
        + GetRemoteByIds(channelId string, remoteId string) (*model.SharedChannelRemote, error)
        + GetRemoteForUser(remoteId string, userId string) (*model.RemoteCluster, error)
        + GetRemotes(opts model.SharedChannelRemoteFilterOpts) ([]*model.SharedChannelRemote, error)
        + GetRemotesStatus(channelId string) ([]*model.SharedChannelRemoteStatus, error)
        + GetSingleUser(userID string, channelID string, remoteID string) (*model.SharedChannelUser, error)
        + GetUsersForSync(filter model.GetUsersForSyncFilter) ([]*model.User, error)
        + GetUsersForUser(userID string) ([]*model.SharedChannelUser, error)
        + HasChannel(channelID string) (bool, error)
        + HasRemote(channelID string, remoteId string) (bool, error)
        + Save(sc *model.SharedChannel) (*model.SharedChannel, error)
        + SaveAttachment(remote *model.SharedChannelAttachment) (*model.SharedChannelAttachment, error)
        + SaveRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + SaveUser(remote *model.SharedChannelUser) (*model.SharedChannelUser, error)
        + Update(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UpdateAttachmentLastSyncAt(id string, syncTime int64) error
        + UpdateRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + UpdateRemoteCursor(id string, cursor model.GetPostsSinceForSyncCursor) error
        + UpdateUserLastSyncAt(userID string, channelID string, remoteID string) error
        + UpsertAttachment(remote *model.SharedChannelAttachment) (string, error)

    }
    class StatusStore << (S,Aquamarine) >> {
        + Get(userID string) (*model.Status, error)
        + GetByIds(userIds []string) ([]*model.Status, error)
        + GetTotalActiveUsersCount() (int64, error)
        + ResetAll() error
        + SaveOrUpdate(status *model.Status) error
        + UpdateExpiredDNDStatuses() ([]*model.Status, error)
        + UpdateLastActivityAt(userID string, lastActivityAt int64) error

    }
    class Store << (S,Aquamarine) >> {
        + Audit() store.AuditStore
        + Bot() store.BotStore
        + Channel() store.ChannelStore
        + ChannelMemberHistory() store.ChannelMemberHistoryStore
        + CheckIntegrity() <font color=blue>chan</font> model.IntegrityCheckResult
        + Close() 
        + ClusterDiscovery() store.ClusterDiscoveryStore
        + Command() store.CommandStore
        + CommandWebhook() store.CommandWebhookStore
        + Compliance() store.ComplianceStore
        + Context() context.Context
        + DesktopTokens() store.DesktopTokensStore
        + Draft() store.DraftStore
        + DropAllTables() 
        + Emoji() store.EmojiStore
        + FileInfo() store.FileInfoStore
        + GetAppliedMigrations() ([]model.AppliedMigration, error)
        + GetDBSchemaVersion() (int, error)
        + GetDbVersion(numerical bool) (string, error)
        + GetInternalMasterDB() *sql.DB
        + GetInternalReplicaDB() *sql.DB
        + GetLocalSchemaVersion() (int, error)
        + Group() store.GroupStore
        + Job() store.JobStore
        + License() store.LicenseStore
        + LinkMetadata() store.LinkMetadataStore
        + LockToMaster() 
        + Logger() mlog.LoggerIFace
        + MarkSystemRanUnitTests() 
        + NotifyAdmin() store.NotifyAdminStore
        + OAuth() store.OAuthStore
        + OutgoingOAuthConnection() store.OutgoingOAuthConnectionStore
        + Plugin() store.PluginStore
        + Post() store.PostStore
        + PostAcknowledgement() store.PostAcknowledgementStore
        + PostPersistentNotification() store.PostPersistentNotificationStore
        + PostPriority() store.PostPriorityStore
        + Preference() store.PreferenceStore
        + ProductNotices() store.ProductNoticesStore
        + Reaction() store.ReactionStore
        + RecycleDBConnections(d time.Duration) 
        + RemoteCluster() store.RemoteClusterStore
        + ReplicaLagAbs() error
        + ReplicaLagTime() error
        + RetentionPolicy() store.RetentionPolicyStore
        + Role() store.RoleStore
        + Scheme() store.SchemeStore
        + Session() store.SessionStore
        + SetContext(_a0 context.Context) 
        + SharedChannel() store.SharedChannelStore
        + Status() store.StatusStore
        + System() store.SystemStore
        + Team() store.TeamStore
        + TermsOfService() store.TermsOfServiceStore
        + Thread() store.ThreadStore
        + Token() store.TokenStore
        + TotalMasterDbConnections() int
        + TotalReadDbConnections() int
        + TotalSearchDbConnections() int
        + TrueUpReview() store.TrueUpReviewStore
        + UnlockFromMaster() 
        + UploadSession() store.UploadSessionStore
        + User() store.UserStore
        + UserAccessToken() store.UserAccessTokenStore
        + UserTermsOfService() store.UserTermsOfServiceStore
        + Webhook() store.WebhookStore

    }
    class SuiteIFace << (S,Aquamarine) >> {
        + GetSession(token string) (*model.Session, *model.AppError)
        + RolesGrantPermission(roleNames []string, permissionId string) bool
        + UserCanSeeOtherUser(c request.CTX, userID string, otherUserId string) (bool, *model.AppError)

    }
    class SystemStore << (S,Aquamarine) >> {
        + Get() (model.StringMap, error)
        + GetByName(name string) (*model.System, error)
        + InsertIfExists(system *model.System) (*model.System, error)
        + PermanentDeleteByName(name string) (*model.System, error)
        + Save(system *model.System) error
        + SaveOrUpdate(system *model.System) error
        + Update(system *model.System) error

    }
    class TeamStore << (S,Aquamarine) >> {
        + AnalyticsGetTeamCountForScheme(schemeID string) (int64, error)
        + AnalyticsTeamCount(opts *model.TeamSearch) (int64, error)
        + ClearAllCustomRoleAssignments() error
        + ClearCaches() 
        + Get(id string) (*model.Team, error)
        + GetActiveMemberCount(teamID string, restrictions *model.ViewUsersRestrictions) (int64, error)
        + GetAll() ([]*model.Team, error)
        + GetAllForExportAfter(limit int, afterID string) ([]*model.TeamForExport, error)
        + GetAllPage(offset int, limit int, opts *model.TeamSearch) ([]*model.Team, error)
        + GetAllPrivateTeamListing() ([]*model.Team, error)
        + GetAllTeamListing() ([]*model.Team, error)
        + GetByEmptyInviteID() ([]*model.Team, error)
        + GetByInviteId(inviteID string) (*model.Team, error)
        + GetByName(name string) (*model.Team, error)
        + GetByNames(name []string) ([]*model.Team, error)
        + GetChannelUnreadsForAllTeams(excludeTeamID string, userID string) ([]*model.ChannelUnread, error)
        + GetChannelUnreadsForTeam(teamID string, userID string) ([]*model.ChannelUnread, error)
        + GetCommonTeamIDsForMultipleUsers(userIDs []string) ([]string, error)
        + GetCommonTeamIDsForTwoUsers(userID string, otherUserID string) ([]string, error)
        + GetMany(ids []string) ([]*model.Team, error)
        + GetMember(c request.CTX, teamID string, userID string) (*model.TeamMember, error)
        + GetMembers(teamID string, offset int, limit int, teamMembersGetOptions *model.TeamMembersGetOptions) ([]*model.TeamMember, error)
        + GetMembersByIds(teamID string, userIds []string, restrictions *model.ViewUsersRestrictions) ([]*model.TeamMember, error)
        + GetTeamMembersForExport(userID string) ([]*model.TeamMemberForExport, error)
        + GetTeamsByScheme(schemeID string, offset int, limit int) ([]*model.Team, error)
        + GetTeamsByUserId(userID string) ([]*model.Team, error)
        + GetTeamsForUser(c request.CTX, userID string, excludeTeamID string, includeDeleted bool) ([]*model.TeamMember, error)
        + GetTeamsForUserWithPagination(userID string, page int, perPage int) ([]*model.TeamMember, error)
        + GetTotalMemberCount(teamID string, restrictions *model.ViewUsersRestrictions) (int64, error)
        + GetUserTeamIds(userID string, allowFromCache bool) ([]string, error)
        + GroupSyncedTeamCount() (int64, error)
        + InvalidateAllTeamIdsForUser(userID string) 
        + MigrateTeamMembers(fromTeamID string, fromUserID string) (<font color=blue>map</font>[string]string, error)
        + PermanentDelete(teamID string) error
        + RemoveAllMembersByTeam(teamID string) error
        + RemoveAllMembersByUser(ctx request.CTX, userID string) error
        + RemoveMember(rctx request.CTX, teamID string, userID string) error
        + RemoveMembers(rctx request.CTX, teamID string, userIds []string) error
        + ResetAllTeamSchemes() error
        + Save(team *model.Team) (*model.Team, error)
        + SaveMember(rctx request.CTX, member *model.TeamMember, maxUsersPerTeam int) (*model.TeamMember, error)
        + SaveMultipleMembers(members []*model.TeamMember, maxUsersPerTeam int) ([]*model.TeamMember, error)
        + SearchAll(opts *model.TeamSearch) ([]*model.Team, error)
        + SearchAllPaged(opts *model.TeamSearch) ([]*model.Team, int64, error)
        + SearchOpen(opts *model.TeamSearch) ([]*model.Team, error)
        + SearchPrivate(opts *model.TeamSearch) ([]*model.Team, error)
        + Update(team *model.Team) (*model.Team, error)
        + UpdateLastTeamIconUpdate(teamID string, curTime int64) error
        + UpdateMember(rctx request.CTX, member *model.TeamMember) (*model.TeamMember, error)
        + UpdateMembersRole(teamID string, userIDs []string) error
        + UpdateMultipleMembers(members []*model.TeamMember) ([]*model.TeamMember, error)
        + UserBelongsToTeams(userID string, teamIds []string) (bool, error)

    }
    class TermsOfServiceStore << (S,Aquamarine) >> {
        + Get(id string, allowFromCache bool) (*model.TermsOfService, error)
        + GetLatest(allowFromCache bool) (*model.TermsOfService, error)
        + Save(termsOfService *model.TermsOfService) (*model.TermsOfService, error)

    }
    class ThreadStore << (S,Aquamarine) >> {
        + DeleteMembershipForUser(userId string, postID string) error
        + DeleteMembershipsForChannel(userID string, channelID string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + Get(id string) (*model.Thread, error)
        + GetMembershipForUser(userId string, postID string) (*model.ThreadMembership, error)
        + GetMembershipsForUser(userId string, teamID string) ([]*model.ThreadMembership, error)
        + GetTeamsUnreadForUser(userID string, teamIDs []string, includeUrgentMentionCount bool) (<font color=blue>map</font>[string]*model.TeamUnread, error)
        + GetThreadFollowers(threadID string, fetchOnlyActive bool) ([]string, error)
        + GetThreadForUser(threadMembership *model.ThreadMembership, extended bool, postPriorityIsEnabled bool) (*model.ThreadResponse, error)
        + GetThreadUnreadReplyCount(threadMembership *model.ThreadMembership) (int64, error)
        + GetThreadsForUser(userId string, teamID string, opts model.GetUserThreadsOpts) ([]*model.ThreadResponse, error)
        + GetTotalThreads(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadMentions(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadThreads(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadUrgentMentions(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + MaintainMembership(userID string, postID string, opts store.ThreadMembershipOpts) (*model.ThreadMembership, error)
        + MarkAllAsRead(userID string, threadIds []string) error
        + MarkAllAsReadByChannels(userID string, channelIDs []string) error
        + MarkAllAsReadByTeam(userID string, teamID string) error
        + MarkAsRead(userID string, threadID string, timestamp int64) error
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + PermanentDeleteBatchThreadMembershipsForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + UpdateMembership(membership *model.ThreadMembership) (*model.ThreadMembership, error)

    }
    class TokenStore << (S,Aquamarine) >> {
        + Cleanup(expiryTime int64) 
        + Delete(token string) error
        + GetAllTokensByType(tokenType string) ([]*model.Token, error)
        + GetByToken(token string) (*model.Token, error)
        + RemoveAllTokensByType(tokenType string) error
        + Save(recovery *model.Token) error

    }
    class TrueUpReviewStore << (S,Aquamarine) >> {
        + CreateTrueUpReviewStatusRecord(reviewStatus *model.TrueUpReviewStatus) (*model.TrueUpReviewStatus, error)
        + GetTrueUpReviewStatus(dueDate int64) (*model.TrueUpReviewStatus, error)
        + Update(reviewStatus *model.TrueUpReviewStatus) (*model.TrueUpReviewStatus, error)

    }
    class UploadSessionStore << (S,Aquamarine) >> {
        + Delete(id string) error
        + Get(c request.CTX, id string) (*model.UploadSession, error)
        + GetForUser(userID string) ([]*model.UploadSession, error)
        + Save(session *model.UploadSession) (*model.UploadSession, error)
        + Update(session *model.UploadSession) error

    }
    class UserAccessTokenStore << (S,Aquamarine) >> {
        + Delete(tokenID string) error
        + DeleteAllForUser(userID string) error
        + Get(tokenID string) (*model.UserAccessToken, error)
        + GetAll(offset int, limit int) ([]*model.UserAccessToken, error)
        + GetByToken(tokenString string) (*model.UserAccessToken, error)
        + GetByUser(userID string, page int, perPage int) ([]*model.UserAccessToken, error)
        + Save(token *model.UserAccessToken) (*model.UserAccessToken, error)
        + Search(term string) ([]*model.UserAccessToken, error)
        + UpdateTokenDisable(tokenID string) error
        + UpdateTokenEnable(tokenID string) error

    }
    class UserStore << (S,Aquamarine) >> {
        + AnalyticsActiveCount(timestamp int64, options model.UserCountOptions) (int64, error)
        + AnalyticsActiveCountForPeriod(startTime int64, endTime int64, options model.UserCountOptions) (int64, error)
        + AnalyticsGetExternalUsers(hostDomain string) (bool, error)
        + AnalyticsGetGuestCount() (int64, error)
        + AnalyticsGetInactiveUsersCount() (int64, error)
        + AnalyticsGetSystemAdminCount() (int64, error)
        + AutocompleteUsersInChannel(rctx request.CTX, teamID string, channelID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInChannel, error)
        + ClearAllCustomRoleAssignments() error
        + ClearCaches() 
        + Count(options model.UserCountOptions) (int64, error)
        + DeactivateGuests() ([]string, error)
        + DemoteUserToGuest(userID string) (*model.User, error)
        + Get(ctx context.Context, id string) (*model.User, error)
        + GetAll() ([]*model.User, error)
        + GetAllAfter(limit int, afterID string) ([]*model.User, error)
        + GetAllNotInAuthService(authServices []string) ([]*model.User, error)
        + GetAllProfiles(options *model.UserGetOptions) ([]*model.User, error)
        + GetAllProfilesInChannel(ctx context.Context, channelID string, allowFromCache bool) (<font color=blue>map</font>[string]*model.User, error)
        + GetAllUsingAuthService(authService string) ([]*model.User, error)
        + GetAnyUnreadPostCountForChannel(userID string, channelID string) (int64, error)
        + GetByAuth(authData *string, authService string) (*model.User, error)
        + GetByEmail(email string) (*model.User, error)
        + GetByRemoteID(remoteID string) (*model.User, error)
        + GetByUsername(username string) (*model.User, error)
        + GetChannelGroupUsers(channelID string) ([]*model.User, error)
        + GetEtagForAllProfiles() string
        + GetEtagForProfiles(teamID string) string
        + GetEtagForProfilesNotInTeam(teamID string) string
        + GetForLogin(loginID string, allowSignInWithUsername bool, allowSignInWithEmail bool) (*model.User, error)
        + GetKnownUsers(userID string) ([]string, error)
        + GetMany(ctx context.Context, ids []string) ([]*model.User, error)
        + GetNewUsersForTeam(teamID string, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfileByGroupChannelIdsForUser(userID string, channelIds []string) (<font color=blue>map</font>[string][]*model.User, error)
        + GetProfileByIds(ctx context.Context, userIds []string, options *store.UserGetByIdsOpts, allowFromCache bool) ([]*model.User, error)
        + GetProfiles(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesByUsernames(usernames []string, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfilesInChannel(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesInChannelByAdmin(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesInChannelByStatus(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesNotInChannel(teamID string, channelId string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfilesNotInTeam(teamID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfilesWithoutTeam(options *model.UserGetOptions) ([]*model.User, error)
        + GetRecentlyActiveUsersForTeam(teamID string, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetSystemAdminProfiles() (<font color=blue>map</font>[string]*model.User, error)
        + GetTeamGroupUsers(teamID string) ([]*model.User, error)
        + GetUnreadCount(userID string, isCRTEnabled bool) (int64, error)
        + GetUnreadCountForChannel(userID string, channelID string) (int64, error)
        + GetUserCountForReport(filter *model.UserReportOptions) (int64, error)
        + GetUserReport(filter *model.UserReportOptions) ([]*model.UserReportQuery, error)
        + GetUsersBatchForIndexing(startTime int64, startFileID string, limit int) ([]*model.UserForIndexing, error)
        + GetUsersWithInvalidEmails(page int, perPage int, restrictedDomains string) ([]*model.User, error)
        + InferSystemInstallDate() (int64, error)
        + InsertUsers(users []*model.User) error
        + InvalidateProfileCacheForUser(userID string) 
        + InvalidateProfilesInChannelCache(channelID string) 
        + InvalidateProfilesInChannelCacheByUser(userID string) 
        + IsEmpty(excludeBots bool) (bool, error)
        + PermanentDelete(userID string) error
        + PromoteGuestToUser(userID string) error
        + RefreshPostStatsForUsers() error
        + ResetAuthDataToEmailForUsers(service string, userIDs []string, includeDeleted bool, dryRun bool) (int, error)
        + ResetLastPictureUpdate(userID string) error
        + Save(rctx request.CTX, user *model.User) (*model.User, error)
        + Search(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchInChannel(channelID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInChannel(teamID string, channelID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInTeam(notInTeamID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchWithoutTeam(term string, options *model.UserSearchOptions) ([]*model.User, error)
        + Update(rctx request.CTX, user *model.User, allowRoleUpdate bool) (*model.UserUpdate, error)
        + UpdateAuthData(userID string, service string, authData *string, email string, resetMfa bool) (string, error)
        + UpdateFailedPasswordAttempts(userID string, attempts int) error
        + UpdateLastLogin(userID string, lastLogin int64) error
        + UpdateLastPictureUpdate(userID string) error
        + UpdateMfaActive(userID string, active bool) error
        + UpdateMfaSecret(userID string, secret string) error
        + UpdateNotifyProps(userID string, props <font color=blue>map</font>[string]string) error
        + UpdatePassword(userID string, newPassword string) error
        + UpdateUpdateAt(userID string) (int64, error)
        + VerifyEmail(userID string, email string) (string, error)

    }
    class UserTermsOfServiceStore << (S,Aquamarine) >> {
        + Delete(userID string, termsOfServiceId string) error
        + GetByUser(userID string) (*model.UserTermsOfService, error)
        + Save(userTermsOfService *model.UserTermsOfService) (*model.UserTermsOfService, error)

    }
    class WebhookStore << (S,Aquamarine) >> {
        + AnalyticsIncomingCount(teamID string) (int64, error)
        + AnalyticsOutgoingCount(teamID string) (int64, error)
        + ClearCaches() 
        + DeleteIncoming(webhookID string, timestamp int64) error
        + DeleteOutgoing(webhookID string, timestamp int64) error
        + GetIncoming(id string, allowFromCache bool) (*model.IncomingWebhook, error)
        + GetIncomingByChannel(channelID string) ([]*model.IncomingWebhook, error)
        + GetIncomingByTeam(teamID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingByTeamByUser(teamID string, userID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingList(offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingListByUser(userID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetOutgoing(id string) (*model.OutgoingWebhook, error)
        + GetOutgoingByChannel(channelID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByChannelByUser(channelID string, userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByTeam(teamID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByTeamByUser(teamID string, userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingList(offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingListByUser(userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + InvalidateWebhookCache(webhook string) 
        + PermanentDeleteIncomingByChannel(channelID string) error
        + PermanentDeleteIncomingByUser(userID string) error
        + PermanentDeleteOutgoingByChannel(channelID string) error
        + PermanentDeleteOutgoingByUser(userID string) error
        + SaveIncoming(webhook *model.IncomingWebhook) (*model.IncomingWebhook, error)
        + SaveOutgoing(webhook *model.OutgoingWebhook) (*model.OutgoingWebhook, error)
        + UpdateIncoming(webhook *model.IncomingWebhook) (*model.IncomingWebhook, error)
        + UpdateOutgoing(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, error)

    }
    interface mockConstructorTestingTNewAuditStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewBotStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewChannelMemberHistoryStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewChannelStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewClusterDiscoveryStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewCommandStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewCommandWebhookStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewComplianceStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewDesktopTokensStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewDraftStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewEmojiStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewFileInfoStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewGroupStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewJobStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewLicenseStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewLicenseValidatorIface  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewLinkMetadataStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewNotifyAdminStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewOAuthStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewOutgoingOAuthConnectionStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewPluginStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewPostAcknowledgementStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewPostPersistentNotificationStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewPostPriorityStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewPostStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewPreferenceStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewProductNoticesStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewReactionStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewRemoteClusterStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewRetentionPolicyStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewRoleStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewSchemeStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewServiceInterface  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewSessionStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewSharedChannelStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewStatusStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewSystemStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewTeamStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewTermsOfServiceStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewThreadStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewTokenStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewTrueUpReviewStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewUploadSessionStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewUserAccessTokenStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewUserStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewUserTermsOfServiceStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
    interface mockConstructorTestingTNewWebhookStore  {
        + Cleanup( <font color=blue>func</font>() ) 

    }
}
"mock.Mock" *-- "mocks.AuditStore"
"mock.Mock" *-- "mocks.BotStore"
"mock.Mock" *-- "mocks.ChannelMemberHistoryStore"
"mock.Mock" *-- "mocks.ChannelStore"
"mock.Mock" *-- "mocks.ClusterDiscoveryStore"
"mock.Mock" *-- "mocks.CommandStore"
"mock.Mock" *-- "mocks.CommandWebhookStore"
"mock.Mock" *-- "mocks.ComplianceStore"
"mock.Mock" *-- "mocks.DesktopTokensStore"
"mock.Mock" *-- "mocks.DraftStore"
"mock.Mock" *-- "mocks.EmojiStore"
"mock.Mock" *-- "mocks.FileInfoStore"
"mock.Mock" *-- "mocks.GroupStore"
"mock.Mock" *-- "mocks.JobStore"
"mock.Mock" *-- "mocks.LicenseStore"
"mock.Mock" *-- "mocks.LicenseValidatorIface"
"mock.Mock" *-- "mocks.LinkMetadataStore"
"mock.Mock" *-- "mocks.NotifyAdminStore"
"mock.Mock" *-- "mocks.OAuthStore"
"mock.Mock" *-- "mocks.OutgoingOAuthConnectionStore"
"mock.Mock" *-- "mocks.PluginStore"
"mock.Mock" *-- "mocks.PostAcknowledgementStore"
"mock.Mock" *-- "mocks.PostPersistentNotificationStore"
"mock.Mock" *-- "mocks.PostPriorityStore"
"mock.Mock" *-- "mocks.PostStore"
"mock.Mock" *-- "mocks.PreferenceStore"
"mock.Mock" *-- "mocks.ProductNoticesStore"
"mock.Mock" *-- "mocks.ReactionStore"
"mock.Mock" *-- "mocks.RemoteClusterStore"
"mock.Mock" *-- "mocks.RetentionPolicyStore"
"mock.Mock" *-- "mocks.RoleStore"
"mock.Mock" *-- "mocks.SchemeStore"
"mock.Mock" *-- "mocks.ServiceInterface"
"mock.Mock" *-- "mocks.SessionStore"
"mock.Mock" *-- "mocks.SharedChannelStore"
"mock.Mock" *-- "mocks.StatusStore"
"mock.Mock" *-- "mocks.Store"
"mock.Mock" *-- "mocks.SuiteIFace"
"mock.Mock" *-- "mocks.SystemStore"
"mock.Mock" *-- "mocks.TeamStore"
"mock.Mock" *-- "mocks.TermsOfServiceStore"
"mock.Mock" *-- "mocks.ThreadStore"
"mock.Mock" *-- "mocks.TokenStore"
"mock.Mock" *-- "mocks.TrueUpReviewStore"
"mock.Mock" *-- "mocks.UploadSessionStore"
"mock.Mock" *-- "mocks.UserAccessTokenStore"
"mock.Mock" *-- "mocks.UserStore"
"mock.Mock" *-- "mocks.UserTermsOfServiceStore"
"mock.Mock" *-- "mocks.WebhookStore"

"store.AuditStore" <|-- "mocks.AuditStore"
"store.BotStore" <|-- "mocks.BotStore"
"store.ChannelMemberHistoryStore" <|-- "mocks.ChannelMemberHistoryStore"
"store.ChannelStore" <|-- "mocks.ChannelStore"
"store.ClusterDiscoveryStore" <|-- "mocks.ClusterDiscoveryStore"
"store.CommandStore" <|-- "mocks.CommandStore"
"store.CommandWebhookStore" <|-- "mocks.CommandWebhookStore"
"store.ComplianceStore" <|-- "mocks.ComplianceStore"
"store.DesktopTokensStore" <|-- "mocks.DesktopTokensStore"
"store.DraftStore" <|-- "mocks.DraftStore"
"store.EmojiStore" <|-- "mocks.EmojiStore"
"store.FileInfoStore" <|-- "mocks.FileInfoStore"
"store.GroupStore" <|-- "mocks.GroupStore"
"store.JobStore" <|-- "mocks.JobStore"
"store.LicenseStore" <|-- "mocks.LicenseStore"
"utils.LicenseValidatorIface" <|-- "mocks.LicenseValidatorIface"
"store.LinkMetadataStore" <|-- "mocks.LinkMetadataStore"
"store.NotifyAdminStore" <|-- "mocks.NotifyAdminStore"
"store.OAuthStore" <|-- "mocks.OAuthStore"
"store.OutgoingOAuthConnectionStore" <|-- "mocks.OutgoingOAuthConnectionStore"
"store.PluginStore" <|-- "mocks.PluginStore"
"store.PostAcknowledgementStore" <|-- "mocks.PostAcknowledgementStore"
"store.PostPersistentNotificationStore" <|-- "mocks.PostPersistentNotificationStore"
"store.PostPriorityStore" <|-- "mocks.PostPriorityStore"
"store.PostStore" <|-- "mocks.PostStore"
"store.PreferenceStore" <|-- "mocks.PreferenceStore"
"store.ProductNoticesStore" <|-- "mocks.ProductNoticesStore"
"store.ReactionStore" <|-- "mocks.ReactionStore"
"store.RemoteClusterStore" <|-- "mocks.RemoteClusterStore"
"store.RetentionPolicyStore" <|-- "mocks.RetentionPolicyStore"
"store.RoleStore" <|-- "mocks.RoleStore"
"store.SchemeStore" <|-- "mocks.SchemeStore"
"email.ServiceInterface" <|-- "mocks.ServiceInterface"
"store.SessionStore" <|-- "mocks.SessionStore"
"store.SharedChannelStore" <|-- "mocks.SharedChannelStore"
"store.StatusStore" <|-- "mocks.StatusStore"
"store.Store" <|-- "mocks.Store"
"platform.SuiteIFace" <|-- "mocks.SuiteIFace"
"hosted_purchase_screening.ScreenTimeStore" <|-- "mocks.SystemStore"
"store.SystemStore" <|-- "mocks.SystemStore"
"store.TeamStore" <|-- "mocks.TeamStore"
"store.TermsOfServiceStore" <|-- "mocks.TermsOfServiceStore"
"store.ThreadStore" <|-- "mocks.ThreadStore"
"store.TokenStore" <|-- "mocks.TokenStore"
"store.TrueUpReviewStore" <|-- "mocks.TrueUpReviewStore"
"store.UploadSessionStore" <|-- "mocks.UploadSessionStore"
"store.UserAccessTokenStore" <|-- "mocks.UserAccessTokenStore"
"store.UserStore" <|-- "mocks.UserStore"
"store.UserTermsOfServiceStore" <|-- "mocks.UserTermsOfServiceStore"
"store.WebhookStore" <|-- "mocks.WebhookStore"

namespace notify_admin {
    interface AppIface  {
        + DoCheckForAdminNotifications(trial bool) *model.AppError

    }
}


namespace oauthgitlab {
    class GitLabProvider << (S,Aquamarine) >> {
        + GetUserFromJSON(c request.CTX, data io.Reader, tokenUser *model.User) (*model.User, error)
        + GetSSOSettings(_ request.CTX, config *model.Config, service string) (*model.SSOSettings, error)
        + GetUserFromIdToken(_ request.CTX, idToken string) (*model.User, error)
        + IsSameUser(_ request.CTX, dbUser *model.User, oauthUser *model.User) bool

    }
    class GitLabUser << (S,Aquamarine) >> {
        + Id int64
        + Username string
        + Login string
        + Email string
        + Name string

        + IsValid() error

    }
}


namespace opentracing {
    class OpenTracingAppLayer << (S,Aquamarine) >> {
        + ActivateMfa(userID string, token string) *model.AppError
        + ActiveSearchBackend() string
        + AddChannelMember(c request.CTX, userID string, channel *model.Channel, opts app.ChannelMemberOpts) (*model.ChannelMember, *model.AppError)
        + AddChannelsToRetentionPolicy(policyID string, channelIDs []string) *model.AppError
        + AddConfigListener(listener <font color=blue>func</font>(*model.Config, *model.Config) ) string
        + AddCursorIdsForPostList(originalList *model.PostList, afterPost string, beforePost string, since int64, page int, perPage int, collapsedThreads bool) 
        + AddDirectChannels(c request.CTX, teamID string, user *model.User) *model.AppError
        + AddLdapPrivateCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddLdapPublicCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddPublicKey(name string, key io.Reader) *model.AppError
        + AddRemoteCluster(rc *model.RemoteCluster) (*model.RemoteCluster, *model.AppError)
        + AddSamlIdpCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddSamlPrivateCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddSamlPublicCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddSessionToCache(session *model.Session) 
        + AddTeamMember(c request.CTX, teamID string, userID string) (*model.TeamMember, *model.AppError)
        + AddTeamMemberByInviteId(c request.CTX, inviteId string, userID string) (*model.TeamMember, *model.AppError)
        + AddTeamMemberByToken(c request.CTX, userID string, tokenID string) (*model.TeamMember, *model.AppError)
        + AddTeamMembers(c request.CTX, teamID string, userIDs []string, userRequestorId string, graceful bool) ([]*model.TeamMemberWithError, *model.AppError)
        + AddTeamsToRetentionPolicy(policyID string, teamIDs []string) *model.AppError
        + AddUserToChannel(c request.CTX, user *model.User, channel *model.Channel, skipTeamMemberIntegrityCheck bool) (*model.ChannelMember, *model.AppError)
        + AddUserToTeam(c request.CTX, teamID string, userID string, userRequestorId string) (*model.Team, *model.TeamMember, *model.AppError)
        + AddUserToTeamByInviteId(c request.CTX, inviteId string, userID string) (*model.Team, *model.TeamMember, *model.AppError)
        + AddUserToTeamByTeamId(c request.CTX, teamID string, user *model.User) *model.AppError
        + AddUserToTeamByToken(c request.CTX, userID string, tokenID string) (*model.Team, *model.TeamMember, *model.AppError)
        + AdjustImage(file io.Reader) (*bytes.Buffer, *model.AppError)
        + AdjustInProductLimits(limits *model.ProductLimits, subscription *model.Subscription) *model.AppError
        + AdjustTeamsFromProductLimits(teamLimits *model.TeamsLimits) *model.AppError
        + AllowOAuthAppAccessToUser(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + AppendFile(fr io.Reader, path string) (int64, *model.AppError)
        + AsymmetricSigningKey() *ecdsa.PrivateKey
        + AttachCloudSessionCookie(c request.CTX, w http.ResponseWriter, r *http.Request) 
        + AttachDeviceId(sessionID string, deviceID string, expiresAt int64) *model.AppError
        + AttachSessionCookies(c request.CTX, w http.ResponseWriter, r *http.Request) 
        + AuthenticateUserForLogin(c request.CTX, id string, loginId string, password string, mfaToken string, cwsToken string, ldapOnly bool) (*model.User, *model.AppError)
        + AuthorizeOAuthUser(c request.CTX, w http.ResponseWriter, r *http.Request, service string, code string, state string, redirectURI string) (io.ReadCloser, string, <font color=blue>map</font>[string]string, *model.User, *model.AppError)
        + AutocompleteChannels(c request.CTX, userID string, term string) (model.ChannelListWithTeamData, *model.AppError)
        + AutocompleteChannelsForSearch(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + AutocompleteChannelsForTeam(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + AutocompleteUsersInChannel(rctx request.CTX, teamID string, channelID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInChannel, *model.AppError)
        + AutocompleteUsersInTeam(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInTeam, *model.AppError)
        + BuildPostReactions(ctx request.CTX, postID string) (*[]app.ReactionImportData, *model.AppError)
        + BuildPushNotificationMessage(c request.CTX, contentsConfig string, post *model.Post, user *model.User, channel *model.Channel, channelName string, senderName string, explicitMention bool, channelWideMention bool, replyToThreadType string) (*model.PushNotification, *model.AppError)
        + BuildSamlMetadataObject(idpMetadata []byte) (*model.SamlMetadataResponse, *model.AppError)
        + BulkExport(ctx request.CTX, writer io.Writer, outPath string, job *model.Job, opts model.BulkExportOpts) *model.AppError
        + BulkImport(c request.CTX, jsonlReader io.Reader, attachmentsReader *zip.Reader, dryRun bool, workers int) (*model.AppError, int)
        + BulkImportWithPath(c request.CTX, jsonlReader io.Reader, attachmentsReader *zip.Reader, dryRun bool, workers int, importPath string) (*model.AppError, int)
        + CanNotifyAdmin(trial bool) bool
        + CancelJob(c request.CTX, jobId string) *model.AppError
        + ChannelMembersMinusGroupMembers(channelID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, int64, *model.AppError)
        + ChannelMembersToAdd(since int64, channelID *string, includeRemovedMembers bool) ([]*model.UserChannelIDPair, *model.AppError)
        + ChannelMembersToRemove(teamID *string) ([]*model.ChannelMember, *model.AppError)
        + Channels() *app.Channels
        + CheckCanInviteToSharedChannel(channelId string) error
        + CheckForClientSideCert(r *http.Request) (string, string, string)
        + CheckIntegrity() <font color=blue>chan</font> model.IntegrityCheckResult
        + CheckMandatoryS3Fields(settings *model.FileSettings) *model.AppError
        + CheckPasswordAndAllCriteria(rctx request.CTX, user *model.User, password string, mfaToken string) *model.AppError
        + CheckPostReminders(rctx request.CTX) 
        + CheckProviderAttributes(c request.CTX, user *model.User, patch *model.UserPatch) string
        + CheckRolesExist(roleNames []string) *model.AppError
        + CheckUserAllAuthenticationCriteria(rctx request.CTX, user *model.User, mfaToken string) *model.AppError
        + CheckUserMfa(rctx request.CTX, user *model.User, token string) *model.AppError
        + CheckUserPostflightAuthenticationCriteria(rctx request.CTX, user *model.User) *model.AppError
        + CheckUserPreflightAuthenticationCriteria(rctx request.CTX, user *model.User, mfaToken string) *model.AppError
        + CheckWebConn(userID string, connectionID string) *platform.CheckConnResult
        + CleanupReportChunks(format string, prefix string, numberOfChunks int) *model.AppError
        + ClearChannelMembersCache(c request.CTX, channelID string) error
        + ClearLatestVersionCache(rctx request.CTX) 
        + ClearSessionCacheForAllUsers() 
        + ClearSessionCacheForAllUsersSkipClusterSend() 
        + ClearSessionCacheForUser(userID string) 
        + ClearSessionCacheForUserSkipClusterSend(userID string) 
        + ClearTeamMembersCache(teamID string) error
        + ClientConfig() <font color=blue>map</font>[string]string
        + ClientConfigHash() string
        + Cloud() einterfaces.CloudInterface
        + CommandsForTeam(teamID string) []*model.Command
        + CompareAndDeletePluginKey(pluginID string, key string, oldValue []byte) (bool, *model.AppError)
        + CompareAndSetPluginKey(pluginID string, key string, oldValue []byte, newValue []byte) (bool, *model.AppError)
        + CompileReportChunks(format string, prefix string, numberOfChunks int, headers []string) *model.AppError
        + CompleteOAuth(c request.CTX, service string, body io.ReadCloser, teamID string, props <font color=blue>map</font>[string]string, tokenUser *model.User) (*model.User, *model.AppError)
        + CompleteOnboarding(c request.CTX, request *model.CompleteOnboardingRequest) *model.AppError
        + CompleteSwitchWithOAuth(c request.CTX, service string, userData io.Reader, email string, tokenUser *model.User) (*model.User, *model.AppError)
        + ComputeLastAccessibleFileTime() error
        + ComputeLastAccessiblePostTime() error
        + Config() *model.Config
        + ConvertBotToUser(c request.CTX, bot *model.Bot, userPatch *model.UserPatch, sysadmin bool) (*model.User, *model.AppError)
        + ConvertGroupMessageToChannel(c request.CTX, convertedByUserId string, gmConversionRequest *model.GroupMessageConversionRequestBody) (*model.Channel, *model.AppError)
        + ConvertUserToBot(user *model.User) (*model.Bot, *model.AppError)
        + CopyFileInfos(rctx request.CTX, userID string, fileIDs []string) ([]string, *model.AppError)
        + CopyWranglerPostlist(c request.CTX, wpl *model.WranglerPostList, targetChannel *model.Channel) (*model.Post, *model.AppError)
        + CreateBot(c request.CTX, bot *model.Bot) (*model.Bot, *model.AppError)
        + CreateChannel(c request.CTX, channel *model.Channel, addMember bool) (*model.Channel, *model.AppError)
        + CreateChannelScheme(c request.CTX, channel *model.Channel) (*model.Scheme, *model.AppError)
        + CreateChannelWithUser(c request.CTX, channel *model.Channel, userID string) (*model.Channel, *model.AppError)
        + CreateCommand(cmd *model.Command) (*model.Command, *model.AppError)
        + CreateCommandPost(c request.CTX, post *model.Post, teamID string, response *model.CommandResponse, skipSlackParsing bool) (*model.Post, *model.AppError)
        + CreateCommandWebhook(commandID string, args *model.CommandArgs) (*model.CommandWebhook, *model.AppError)
        + CreateDefaultMemberships(c request.CTX, params model.CreateDefaultMembershipParams) error
        + CreateEmoji(c request.CTX, sessionUserId string, emoji *model.Emoji, multiPartImageData *multipart.Form) (*model.Emoji, *model.AppError)
        + CreateGroup(group *model.Group) (*model.Group, *model.AppError)
        + CreateGroupChannel(c request.CTX, userIDs []string, creatorId string) (*model.Channel, *model.AppError)
        + CreateGroupWithUserIds(group *model.GroupWithUserIds) (*model.Group, *model.AppError)
        + CreateGuest(c request.CTX, user *model.User) (*model.User, *model.AppError)
        + CreateIncomingWebhookForChannel(creatorId string, channel *model.Channel, hook *model.IncomingWebhook) (*model.IncomingWebhook, *model.AppError)
        + CreateJob(c request.CTX, job *model.Job) (*model.Job, *model.AppError)
        + CreateOAuthApp(app *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + CreateOAuthStateToken(extra string) (*model.Token, *model.AppError)
        + CreateOAuthUser(c request.CTX, service string, userData io.Reader, teamID string, tokenUser *model.User) (*model.User, *model.AppError)
        + CreateOutgoingWebhook(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + CreatePasswordRecoveryToken(userID string, email string) (*model.Token, *model.AppError)
        + CreatePost(c request.CTX, post *model.Post, channel *model.Channel, triggerWebhooks bool, setOnline bool) (*model.Post, *model.AppError)
        + CreatePostAsUser(c request.CTX, post *model.Post, currentSessionId string, setOnline bool) (*model.Post, *model.AppError)
        + CreatePostMissingChannel(c request.CTX, post *model.Post, triggerWebhooks bool, setOnline bool) (*model.Post, *model.AppError)
        + CreateRetentionPolicy(policy *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + CreateRole(role *model.Role) (*model.Role, *model.AppError)
        + CreateSamlRelayToken(extra string) (*model.Token, *model.AppError)
        + CreateScheme(scheme *model.Scheme) (*model.Scheme, *model.AppError)
        + CreateSession(c request.CTX, session *model.Session) (*model.Session, *model.AppError)
        + CreateSidebarCategory(c request.CTX, userID string, teamID string, newCategory *model.SidebarCategoryWithChannels) (*model.SidebarCategoryWithChannels, *model.AppError)
        + CreateTeam(c request.CTX, team *model.Team) (*model.Team, *model.AppError)
        + CreateTeamWithUser(c request.CTX, team *model.Team, userID string) (*model.Team, *model.AppError)
        + CreateTermsOfService(text string, userID string) (*model.TermsOfService, *model.AppError)
        + CreateUploadSession(c request.CTX, us *model.UploadSession) (*model.UploadSession, *model.AppError)
        + CreateUser(c request.CTX, user *model.User) (*model.User, *model.AppError)
        + CreateUserAccessToken(token *model.UserAccessToken) (*model.UserAccessToken, *model.AppError)
        + CreateUserAsAdmin(c request.CTX, user *model.User, redirect string) (*model.User, *model.AppError)
        + CreateUserFromSignup(c request.CTX, user *model.User, redirect string) (*model.User, *model.AppError)
        + CreateUserWithInviteId(c request.CTX, user *model.User, inviteId string, redirect string) (*model.User, *model.AppError)
        + CreateUserWithToken(c request.CTX, user *model.User, token *model.Token) (*model.User, *model.AppError)
        + CreateWebhookPost(c request.CTX, userID string, channel *model.Channel, text string, overrideUsername string, overrideIconURL string, overrideIconEmoji string, props model.StringInterface, postType string, postRootId string) (*model.Post, *model.AppError)
        + CreateZipFileAndAddFiles(fileBackend filestore.FileBackend, fileDatas []model.FileData, zipFileName string, directory string) error
        + DBHealthCheckDelete() error
        + DBHealthCheckWrite() error
        + DeactivateGuests(c request.CTX) *model.AppError
        + DeactivateMfa(userID string) *model.AppError
        + DeauthorizeOAuthAppForUser(c request.CTX, userID string, appID string) *model.AppError
        + DefaultChannelNames(c request.CTX) []string
        + DeleteAcknowledgementForPost(c request.CTX, postID string, userID string) *model.AppError
        + DeleteAllExpiredPluginKeys() *model.AppError
        + DeleteAllKeysForPlugin(pluginID string) *model.AppError
        + DeleteBrandImage(rctx request.CTX) *model.AppError
        + DeleteChannel(c request.CTX, channel *model.Channel, userID string) *model.AppError
        + DeleteChannelScheme(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + DeleteCommand(commandID string) *model.AppError
        + DeleteDraft(rctx request.CTX, draft *model.Draft, connectionID string) *model.AppError
        + DeleteEmoji(c request.CTX, emoji *model.Emoji) *model.AppError
        + DeleteEphemeralPost(userID string, postID string) 
        + DeleteExport(name string) *model.AppError
        + DeleteGroup(groupID string) (*model.Group, *model.AppError)
        + DeleteGroupConstrainedMemberships(c request.CTX) error
        + DeleteGroupMember(groupID string, userID string) (*model.GroupMember, *model.AppError)
        + DeleteGroupMembers(groupID string, userIDs []string) ([]*model.GroupMember, *model.AppError)
        + DeleteGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, *model.AppError)
        + DeleteIncomingWebhook(hookID string) *model.AppError
        + DeleteOAuthApp(appID string) *model.AppError
        + DeleteOutgoingWebhook(hookID string) *model.AppError
        + DeletePersistentNotification(c request.CTX, post *model.Post) *model.AppError
        + DeletePluginKey(pluginID string, key string) *model.AppError
        + DeletePost(c request.CTX, postID string, deleteByID string) (*model.Post, *model.AppError)
        + DeletePreferences(c request.CTX, userID string, preferences model.Preferences) *model.AppError
        + DeletePublicKey(name string) *model.AppError
        + DeleteReactionForPost(c request.CTX, reaction *model.Reaction) *model.AppError
        + DeleteRemoteCluster(remoteClusterId string) (bool, *model.AppError)
        + DeleteRetentionPolicy(policyID string) *model.AppError
        + DeleteScheme(schemeId string) (*model.Scheme, *model.AppError)
        + DeleteSharedChannelRemote(id string) (bool, error)
        + DeleteSidebarCategory(c request.CTX, userID string, teamID string, categoryId string) *model.AppError
        + DeleteToken(token *model.Token) *model.AppError
        + DemoteUserToGuest(c request.CTX, user *model.User) *model.AppError
        + DisableAutoResponder(rctx request.CTX, userID string, asAdmin bool) *model.AppError
        + DisablePlugin(id string) *model.AppError
        + DisableUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + DoActionRequest(c request.CTX, rawURL string, body []byte) (*http.Response, *model.AppError)
        + DoAdvancedPermissionsMigration() 
        + DoAppMigrations() 
        + DoCheckForAdminNotifications(trial bool) *model.AppError
        + DoCommandRequest(rctx request.CTX, cmd *model.Command, p url.Values) (*model.Command, *model.CommandResponse, *model.AppError)
        + DoEmojisPermissionsMigration() 
        + DoGuestRolesCreationMigration() 
        + DoLocalRequest(c request.CTX, rawURL string, body []byte) (*http.Response, *model.AppError)
        + DoLogin(c request.CTX, w http.ResponseWriter, r *http.Request, user *model.User, deviceID string, isMobile bool, isOAuthUser bool, isSaml bool) (*model.Session, *model.AppError)
        + DoPermissionsMigrations() error
        + DoPostActionWithCookie(c request.CTX, postID string, actionId string, userID string, selectedOption string, cookie *model.PostActionCookie) (string, *model.AppError)
        + DoSubscriptionRenewalCheck() 
        + DoSystemConsoleRolesCreationMigration() 
        + DoUploadFile(c request.CTX, now time.Time, rawTeamId string, rawChannelId string, rawUserId string, rawFilename string, data []byte) (*model.FileInfo, *model.AppError)
        + DoUploadFileExpectModification(c request.CTX, now time.Time, rawTeamId string, rawChannelId string, rawUserId string, rawFilename string, data []byte) (*model.FileInfo, []byte, *model.AppError)
        + DoubleCheckPassword(rctx request.CTX, user *model.User, password string) *model.AppError
        + DownloadFromURL(downloadURL string) ([]byte, error)
        + EnablePlugin(id string) *model.AppError
        + EnableUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + EnsureBot(rctx request.CTX, pluginID string, bot *model.Bot) (string, error)
        + EnvironmentConfig(filter <font color=blue>func</font>(reflect.StructField) bool) <font color=blue>map</font>[string]any
        + ExecuteCommand(c request.CTX, args *model.CommandArgs) (*model.CommandResponse, *model.AppError)
        + ExportFileBackend() filestore.FileBackend
        + ExportFileExists(path string) (bool, *model.AppError)
        + ExportFileModTime(path string) (time.Time, *model.AppError)
        + ExportFileReader(path string) (filestore.ReadCloseSeeker, *model.AppError)
        + ExportPermissions(w io.Writer) error
        + ExtendSessionExpiryIfNeeded(rctx request.CTX, session *model.Session) bool
        + ExtractContentFromFileInfo(rctx request.CTX, fileInfo *model.FileInfo) error
        + FetchSamlMetadataFromIdp(url string) ([]byte, *model.AppError)
        + FileBackend() filestore.FileBackend
        + FileExists(path string) (bool, *model.AppError)
        + FileModTime(path string) (time.Time, *model.AppError)
        + FileReader(path string) (filestore.ReadCloseSeeker, *model.AppError)
        + FileSize(path string) (int64, *model.AppError)
        + FillInChannelProps(c request.CTX, channel *model.Channel) *model.AppError
        + FillInChannelsProps(c request.CTX, channelList model.ChannelList) *model.AppError
        + FillInPostProps(c request.CTX, post *model.Post, channel *model.Channel) *model.AppError
        + FilterNonGroupChannelMembers(userIDs []string, channel *model.Channel) ([]string, error)
        + FilterNonGroupTeamMembers(userIDs []string, team *model.Team) ([]string, error)
        + FilterUsersByVisible(c request.CTX, viewer *model.User, otherUsers []*model.User) ([]*model.User, *model.AppError)
        + FindTeamByName(name string) bool
        + FinishSendAdminNotifyPost(trial bool, now int64, pluginBasedData <font color=blue>map</font>[string][]*model.NotifyAdminData) 
        + GenerateAndSaveDesktopToken(createAt int64, user *model.User) (*string, *model.AppError)
        + GenerateMfaSecret(userID string) (*model.MfaSecret, *model.AppError)
        + GeneratePresignURLForExport(name string) (*model.PresignURLResponse, *model.AppError)
        + GeneratePublicLink(siteURL string, info *model.FileInfo) string
        + GenerateSupportPacket(c request.CTX) []model.FileData
        + GetAcknowledgementsForPost(postID string) ([]*model.PostAcknowledgement, *model.AppError)
        + GetAcknowledgementsForPostList(postList *model.PostList) (<font color=blue>map</font>[string][]*model.PostAcknowledgement, *model.AppError)
        + GetActivePluginManifests() ([]*model.Manifest, *model.AppError)
        + GetAllChannels(c request.CTX, page int, perPage int, opts model.ChannelSearchOpts) (model.ChannelListWithTeamData, *model.AppError)
        + GetAllChannelsCount(c request.CTX, opts model.ChannelSearchOpts) (int64, *model.AppError)
        + GetAllLdapGroupsPage(rctx request.CTX, page int, perPage int, opts model.LdapGroupSearchOpts) ([]*model.Group, int, *model.AppError)
        + GetAllPrivateTeams() ([]*model.Team, *model.AppError)
        + GetAllPublicTeams() ([]*model.Team, *model.AppError)
        + GetAllRemoteClusters(filter model.RemoteClusterQueryFilter) ([]*model.RemoteCluster, *model.AppError)
        + GetAllRoles() ([]*model.Role, *model.AppError)
        + GetAllTeams() ([]*model.Team, *model.AppError)
        + GetAllTeamsPage(offset int, limit int, opts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + GetAllTeamsPageWithCount(offset int, limit int, opts *model.TeamSearch) (*model.TeamsWithCount, *model.AppError)
        + GetAnalytics(name string, teamID string) (model.AnalyticsRows, *model.AppError)
        + GetAppliedSchemaMigrations() ([]model.AppliedMigration, *model.AppError)
        + GetAudits(rctx request.CTX, userID string, limit int) (model.Audits, *model.AppError)
        + GetAuditsPage(rctx request.CTX, userID string, page int, perPage int) (model.Audits, *model.AppError)
        + GetAuthorizationCode(c request.CTX, w http.ResponseWriter, r *http.Request, service string, props <font color=blue>map</font>[string]string, loginHint string) (string, *model.AppError)
        + GetAuthorizedAppsForUser(userID string, page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + GetBot(botUserId string, includeDeleted bool) (*model.Bot, *model.AppError)
        + GetBots(options *model.BotGetOptions) (model.BotList, *model.AppError)
        + GetBrandImage(rctx request.CTX) ([]byte, *model.AppError)
        + GetBulkReactionsForPosts(postIDs []string) (<font color=blue>map</font>[string][]*model.Reaction, *model.AppError)
        + GetChannel(c request.CTX, channelID string) (*model.Channel, *model.AppError)
        + GetChannelByName(c request.CTX, channelName string, teamID string, includeDeleted bool) (*model.Channel, *model.AppError)
        + GetChannelByNameForTeamName(c request.CTX, channelName string, teamName string, includeDeleted bool) (*model.Channel, *model.AppError)
        + GetChannelCounts(c request.CTX, teamID string, userID string) (*model.ChannelCounts, *model.AppError)
        + GetChannelFileCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelGroupUsers(channelID string) ([]*model.User, *model.AppError)
        + GetChannelGuestCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelMember(c request.CTX, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + GetChannelMemberCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelMembersByIds(c request.CTX, channelID string, userIDs []string) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersForUser(c request.CTX, teamID string, userID string) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersForUserWithPagination(c request.CTX, userID string, page int, perPage int) ([]*model.ChannelMember, *model.AppError)
        + GetChannelMembersPage(c request.CTX, channelID string, page int, perPage int) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersTimezones(c request.CTX, channelID string) ([]string, *model.AppError)
        + GetChannelMembersWithTeamDataForUserWithPagination(c request.CTX, userID string, page int, perPage int) (model.ChannelMembersWithTeamData, *model.AppError)
        + GetChannelModerationsForChannel(c request.CTX, channel *model.Channel) ([]*model.ChannelModeration, *model.AppError)
        + GetChannelPinnedPostCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelPoliciesForUser(userID string, offset int, limit int) (*model.RetentionPolicyForChannelList, *model.AppError)
        + GetChannelUnread(c request.CTX, channelID string, userID string) (*model.ChannelUnread, *model.AppError)
        + GetChannels(c request.CTX, channelIDs []string) ([]*model.Channel, *model.AppError)
        + GetChannelsByNames(c request.CTX, channelNames []string, teamID string) ([]*model.Channel, *model.AppError)
        + GetChannelsForRetentionPolicy(policyID string, offset int, limit int) (*model.ChannelsWithCount, *model.AppError)
        + GetChannelsForScheme(scheme *model.Scheme, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetChannelsForSchemePage(scheme *model.Scheme, page int, perPage int) (model.ChannelList, *model.AppError)
        + GetChannelsForTeamForUser(c request.CTX, teamID string, userID string, opts *model.ChannelSearchOpts) (model.ChannelList, *model.AppError)
        + GetChannelsForUser(c request.CTX, userID string, includeDeleted bool, lastDeleteAt int, pageSize int, fromChannelID string) (model.ChannelList, *model.AppError)
        + GetChannelsMemberCount(c request.CTX, channelIDs []string) (<font color=blue>map</font>[string]int64, *model.AppError)
        + GetChannelsUserNotIn(c request.CTX, teamID string, userID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetCloudSession(token string) (*model.Session, *model.AppError)
        + GetClusterId() string
        + GetClusterPluginStatuses() (model.PluginStatuses, *model.AppError)
        + GetClusterStatus(rctx request.CTX) []*model.ClusterInfo
        + GetCommand(commandID string) (*model.Command, *model.AppError)
        + GetCommonTeamIDsForTwoUsers(userID string, otherUserID string) ([]string, *model.AppError)
        + GetComplianceFile(job *model.Compliance) ([]byte, *model.AppError)
        + GetComplianceReport(reportId string) (*model.Compliance, *model.AppError)
        + GetComplianceReports(page int, perPage int) (model.Compliances, *model.AppError)
        + GetConfigFile(name string) ([]byte, error)
        + GetCookieDomain() string
        + GetCustomStatus(userID string) (*model.CustomStatus, *model.AppError)
        + GetDefaultProfileImage(user *model.User) ([]byte, *model.AppError)
        + GetDeletedChannels(c request.CTX, teamID string, offset int, limit int, userID string) (model.ChannelList, *model.AppError)
        + GetDraft(userID string, channelID string, rootID string) (*model.Draft, *model.AppError)
        + GetDraftsForUser(rctx request.CTX, userID string, teamID string) ([]*model.Draft, *model.AppError)
        + GetEditHistoryForPost(postID string) ([]*model.Post, *model.AppError)
        + GetEmoji(c request.CTX, emojiId string) (*model.Emoji, *model.AppError)
        + GetEmojiByName(c request.CTX, emojiName string) (*model.Emoji, *model.AppError)
        + GetEmojiImage(c request.CTX, emojiId string) ([]byte, string, *model.AppError)
        + GetEmojiList(c request.CTX, page int, perPage int, sort string) ([]*model.Emoji, *model.AppError)
        + GetEmojiStaticURL(c request.CTX, emojiName string) (string, *model.AppError)
        + GetEnvironmentConfig(filter <font color=blue>func</font>(reflect.StructField) bool) <font color=blue>map</font>[string]any
        + GetFile(rctx request.CTX, fileID string) ([]byte, *model.AppError)
        + GetFileInfo(rctx request.CTX, fileID string) (*model.FileInfo, *model.AppError)
        + GetFileInfos(rctx request.CTX, page int, perPage int, opt *model.GetFileInfosOptions) ([]*model.FileInfo, *model.AppError)
        + GetFileInfosForPost(rctx request.CTX, postID string, fromMaster bool, includeDeleted bool) ([]*model.FileInfo, int64, *model.AppError)
        + GetFileInfosForPostWithMigration(rctx request.CTX, postID string, includeDeleted bool) ([]*model.FileInfo, *model.AppError)
        + GetFilteredUsersStats(options *model.UserCountOptions) (*model.UsersStats, *model.AppError)
        + GetFlaggedPosts(userID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetFlaggedPostsForChannel(userID string, channelID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetFlaggedPostsForTeam(userID string, teamID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetGlobalRetentionPolicy() (*model.GlobalRetentionPolicy, *model.AppError)
        + GetGroup(id string, opts *model.GetGroupOpts, viewRestrictions *model.ViewUsersRestrictions) (*model.Group, *model.AppError)
        + GetGroupByName(name string, opts model.GroupSearchOpts) (*model.Group, *model.AppError)
        + GetGroupByRemoteID(remoteID string, groupSource model.GroupSource) (*model.Group, *model.AppError)
        + GetGroupChannel(c request.CTX, userIDs []string) (*model.Channel, *model.AppError)
        + GetGroupMemberCount(groupID string, viewRestrictions *model.ViewUsersRestrictions) (int64, *model.AppError)
        + GetGroupMemberUsers(groupID string) ([]*model.User, *model.AppError)
        + GetGroupMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, int, *model.AppError)
        + GetGroupMemberUsersSortedPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions, teammateNameDisplay string) ([]*model.User, int, *model.AppError)
        + GetGroupMessageMembersCommonTeams(c request.CTX, channelID string) ([]*model.Team, *model.AppError)
        + GetGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, *model.AppError)
        + GetGroupSyncables(groupID string, syncableType model.GroupSyncableType) ([]*model.GroupSyncable, *model.AppError)
        + GetGroups(page int, perPage int, opts model.GroupSearchOpts, viewRestrictions *model.ViewUsersRestrictions) ([]*model.Group, *model.AppError)
        + GetGroupsAssociatedToChannelsByTeam(teamID string, opts model.GroupSearchOpts) (<font color=blue>map</font>[string][]*model.GroupWithSchemeAdmin, *model.AppError)
        + GetGroupsByChannel(channelID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, int, *model.AppError)
        + GetGroupsByIDs(groupIDs []string) ([]*model.Group, *model.AppError)
        + GetGroupsBySource(groupSource model.GroupSource) ([]*model.Group, *model.AppError)
        + GetGroupsByTeam(teamID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, int, *model.AppError)
        + GetGroupsByUserId(userID string) ([]*model.Group, *model.AppError)
        + GetHubForUserId(userID string) *platform.Hub
        + GetIncomingWebhook(hookID string) (*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksForTeamPage(teamID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksForTeamPageByUser(teamID string, userID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksPage(page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksPageByUser(userID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetJob(c request.CTX, id string) (*model.Job, *model.AppError)
        + GetJobsByType(c request.CTX, jobType string, offset int, limit int) ([]*model.Job, *model.AppError)
        + GetJobsByTypePage(c request.CTX, jobType string, page int, perPage int) ([]*model.Job, *model.AppError)
        + GetJobsByTypes(c request.CTX, jobTypes []string, offset int, limit int) ([]*model.Job, *model.AppError)
        + GetJobsByTypesPage(c request.CTX, jobType []string, page int, perPage int) ([]*model.Job, *model.AppError)
        + GetKnownUsers(userID string) ([]string, *model.AppError)
        + GetLastAccessibleFileTime() (int64, *model.AppError)
        + GetLastAccessiblePostTime() (int64, *model.AppError)
        + GetLatestTermsOfService() (*model.TermsOfService, *model.AppError)
        + GetLatestVersion(rctx request.CTX, latestVersionUrl string) (*model.GithubReleaseInfo, *model.AppError)
        + GetLdapGroup(rctx request.CTX, ldapGroupID string) (*model.Group, *model.AppError)
        + GetLogs(rctx request.CTX, page int, perPage int) ([]string, *model.AppError)
        + GetLogsSkipSend(rctx request.CTX, page int, perPage int, logFilter *model.LogFilter) ([]string, *model.AppError)
        + GetMarketplacePlugins(filter *model.MarketplacePluginFilter) ([]*model.MarketplacePlugin, *model.AppError)
        + GetMemberCountsByGroup(rctx request.CTX, channelID string, includeTimezones bool) ([]*model.ChannelMemberCountByGroup, *model.AppError)
        + GetMessageForNotification(post *model.Post, teamName string, siteUrl string, translateFunc i18n.TranslateFunc) string
        + GetMultipleEmojiByName(c request.CTX, names []string) ([]*model.Emoji, *model.AppError)
        + GetNewUsersForTeamPage(teamID string, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetNextPostIdFromPostList(postList *model.PostList, collapsedThreads bool) string
        + GetNotificationNameFormat(user *model.User) string
        + GetNumberOfChannelsOnTeam(c request.CTX, teamID string) (int, *model.AppError)
        + GetOAuthAccessTokenForCodeFlow(c request.CTX, clientId string, grantType string, redirectURI string, code string, secret string, refreshToken string) (*model.AccessResponse, *model.AppError)
        + GetOAuthAccessTokenForImplicitFlow(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (*model.Session, *model.AppError)
        + GetOAuthApp(appID string) (*model.OAuthApp, *model.AppError)
        + GetOAuthApps(page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + GetOAuthAppsByCreator(userID string, page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + GetOAuthCodeRedirect(userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + GetOAuthImplicitRedirect(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + GetOAuthLoginEndpoint(c request.CTX, w http.ResponseWriter, r *http.Request, service string, teamID string, action string, redirectTo string, loginHint string, isMobile bool, desktopToken string) (string, *model.AppError)
        + GetOAuthSignupEndpoint(c request.CTX, w http.ResponseWriter, r *http.Request, service string, teamID string, desktopToken string) (string, *model.AppError)
        + GetOAuthStateToken(token string) (*model.Token, *model.AppError)
        + GetOnboarding() (*model.System, *model.AppError)
        + GetOpenGraphMetadata(requestURL string) ([]byte, error)
        + GetOrCreateDirectChannel(c request.CTX, userID string, otherUserID string, channelOptions ...model.ChannelOption) (*model.Channel, *model.AppError)
        + GetOrCreateTrueUpReviewStatus() (*model.TrueUpReviewStatus, *model.AppError)
        + GetOutgoingWebhook(hookID string) (*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForChannelPageByUser(channelID string, userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForTeamPage(teamID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForTeamPageByUser(teamID string, userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksPage(page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksPageByUser(userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetPasswordRecoveryToken(token string) (*model.Token, *model.AppError)
        + GetPermalinkPost(c request.CTX, postID string, userID string) (*model.PostList, *model.AppError)
        + GetPinnedPosts(c request.CTX, channelID string) (*model.PostList, *model.AppError)
        + GetPluginKey(pluginID string, key string) ([]byte, *model.AppError)
        + GetPluginStatus(id string) (*model.PluginStatus, *model.AppError)
        + GetPluginStatuses() (model.PluginStatuses, *model.AppError)
        + GetPlugins() (*model.PluginsResponse, *model.AppError)
        + GetPluginsEnvironment() *plugin.Environment
        + GetPostAfterTime(channelID string, time int64, collapsedThreads bool) (*model.Post, *model.AppError)
        + GetPostIdAfterTime(channelID string, time int64, collapsedThreads bool) (string, *model.AppError)
        + GetPostIdBeforeTime(channelID string, time int64, collapsedThreads bool) (string, *model.AppError)
        + GetPostIfAuthorized(c request.CTX, postID string, session *model.Session, includeDeleted bool) (*model.Post, *model.AppError)
        + GetPostInfo(c request.CTX, postID string) (*model.PostInfo, *model.AppError)
        + GetPostThread(postID string, opts model.GetPostsOptions, userID string) (*model.PostList, *model.AppError)
        + GetPosts(channelID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetPostsAfterPost(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsAroundPost(before bool, options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsBeforePost(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsByIds(postIDs []string) ([]*model.Post, int64, *model.AppError)
        + GetPostsEtag(channelID string, collapsedThreads bool) string
        + GetPostsForChannelAroundLastUnread(c request.CTX, channelID string, userID string, limitBefore int, limitAfter int, skipFetchThreads bool, collapsedThreads bool, collapsedThreadsExtended bool) (*model.PostList, *model.AppError)
        + GetPostsPage(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsSince(options model.GetPostsSinceOptions) (*model.PostList, *model.AppError)
        + GetPostsUsage() (int64, *model.AppError)
        + GetPreferenceByCategoryAndNameForUser(c request.CTX, userID string, category string, preferenceName string) (*model.Preference, *model.AppError)
        + GetPreferenceByCategoryForUser(c request.CTX, userID string, category string) (model.Preferences, *model.AppError)
        + GetPreferencesForUser(c request.CTX, userID string) (model.Preferences, *model.AppError)
        + GetPrevPostIdFromPostList(postList *model.PostList, collapsedThreads bool) string
        + GetPriorityForPost(postId string) (*model.PostPriority, *model.AppError)
        + GetPriorityForPostList(list *model.PostList) (<font color=blue>map</font>[string]*model.PostPriority, *model.AppError)
        + GetPrivateChannelsForTeam(c request.CTX, teamID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetProductNotices(c request.CTX, userID string, teamID string, client model.NoticeClientType, clientVersion string, locale string) (model.NoticeMessages, *model.AppError)
        + GetProfileImage(user *model.User) ([]byte, bool, *model.AppError)
        + GetProfileImagePath(user *model.User) (string, *model.AppError)
        + GetPublicChannelsByIdsForTeam(c request.CTX, teamID string, channelIDs []string) (model.ChannelList, *model.AppError)
        + GetPublicChannelsForTeam(c request.CTX, teamID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetPublicKey(name string) ([]byte, *model.AppError)
        + GetReactionsForPost(postID string) ([]*model.Reaction, *model.AppError)
        + GetRecentlyActiveUsersForTeam(teamID string) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetRecentlyActiveUsersForTeamPage(teamID string, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetRemoteCluster(remoteClusterId string) (*model.RemoteCluster, *model.AppError)
        + GetRemoteClusterForUser(remoteID string, userID string) (*model.RemoteCluster, *model.AppError)
        + GetRemoteClusterService() (remotecluster.RemoteClusterServiceIFace, *model.AppError)
        + GetRemoteClusterSession(token string, remoteId string) (*model.Session, *model.AppError)
        + GetRetentionPolicies(offset int, limit int) (*model.RetentionPolicyWithTeamAndChannelCountsList, *model.AppError)
        + GetRetentionPoliciesCount() (int64, *model.AppError)
        + GetRetentionPolicy(policyID string) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + GetRole(id string) (*model.Role, *model.AppError)
        + GetRoleByName(ctx context.Context, name string) (*model.Role, *model.AppError)
        + GetRolesByNames(names []string) ([]*model.Role, *model.AppError)
        + GetSamlCertificateStatus() *model.SamlCertificateStatus
        + GetSamlEmailToken(token string) (*model.Token, *model.AppError)
        + GetSamlMetadata(c request.CTX) (string, *model.AppError)
        + GetSamlMetadataFromIdp(idpMetadataURL string) (*model.SamlMetadataResponse, *model.AppError)
        + GetSanitizeOptions(asAdmin bool) <font color=blue>map</font>[string]bool
        + GetSanitizedConfig() *model.Config
        + GetScheme(id string) (*model.Scheme, *model.AppError)
        + GetSchemeByName(name string) (*model.Scheme, *model.AppError)
        + GetSchemeRolesForChannel(c request.CTX, channelID string) (string, string, string, *model.AppError)
        + GetSchemeRolesForTeam(teamID string) (string, string, string, *model.AppError)
        + GetSchemes(scope string, offset int, limit int) ([]*model.Scheme, *model.AppError)
        + GetSchemesPage(scope string, page int, perPage int) ([]*model.Scheme, *model.AppError)
        + GetSession(token string) (*model.Session, *model.AppError)
        + GetSessionById(c request.CTX, sessionID string) (*model.Session, *model.AppError)
        + GetSessionLengthInMillis(session *model.Session) int64
        + GetSessions(c request.CTX, userID string) ([]*model.Session, *model.AppError)
        + GetSharedChannel(channelID string) (*model.SharedChannel, error)
        + GetSharedChannelRemote(id string) (*model.SharedChannelRemote, error)
        + GetSharedChannelRemoteByIds(channelID string, remoteID string) (*model.SharedChannelRemote, error)
        + GetSharedChannelRemotes(opts model.SharedChannelRemoteFilterOpts) ([]*model.SharedChannelRemote, error)
        + GetSharedChannelRemotesStatus(channelID string) ([]*model.SharedChannelRemoteStatus, error)
        + GetSharedChannels(page int, perPage int, opts model.SharedChannelFilterOpts) ([]*model.SharedChannel, *model.AppError)
        + GetSharedChannelsCount(opts model.SharedChannelFilterOpts) (int64, error)
        + GetSidebarCategories(c request.CTX, userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, *model.AppError)
        + GetSidebarCategoriesForTeamForUser(c request.CTX, userID string, teamID string) (*model.OrderedSidebarCategories, *model.AppError)
        + GetSidebarCategory(c request.CTX, categoryId string) (*model.SidebarCategoryWithChannels, *model.AppError)
        + GetSidebarCategoryOrder(c request.CTX, userID string, teamID string) ([]string, *model.AppError)
        + GetSinglePost(postID string, includeDeleted bool) (*model.Post, *model.AppError)
        + GetSiteURL() string
        + GetStatus(userID string) (*model.Status, *model.AppError)
        + GetStatusFromCache(userID string) *model.Status
        + GetStorageUsage() (int64, *model.AppError)
        + GetSuggestions(c request.CTX, commandArgs *model.CommandArgs, commands []*model.Command, roleID string) []model.AutocompleteSuggestion
        + GetSystemBot(rctx request.CTX) (*model.Bot, *model.AppError)
        + GetTeam(teamID string) (*model.Team, *model.AppError)
        + GetTeamByInviteId(inviteId string) (*model.Team, *model.AppError)
        + GetTeamByName(name string) (*model.Team, *model.AppError)
        + GetTeamGroupUsers(teamID string) ([]*model.User, *model.AppError)
        + GetTeamIcon(team *model.Team) ([]byte, *model.AppError)
        + GetTeamIdFromQuery(query url.Values) (string, *model.AppError)
        + GetTeamMember(c request.CTX, teamID string, userID string) (*model.TeamMember, *model.AppError)
        + GetTeamMembers(teamID string, offset int, limit int, teamMembersGetOptions *model.TeamMembersGetOptions) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembersByIds(teamID string, userIDs []string, restrictions *model.ViewUsersRestrictions) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembersForUser(c request.CTX, userID string, excludeTeamID string, includeDeleted bool) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembersForUserWithPagination(userID string, page int, perPage int) ([]*model.TeamMember, *model.AppError)
        + GetTeamPoliciesForUser(userID string, offset int, limit int) (*model.RetentionPolicyForTeamList, *model.AppError)
        + GetTeamSchemeChannelRoles(c request.CTX, teamID string) (string, string, string, *model.AppError)
        + GetTeamStats(teamID string, restrictions *model.ViewUsersRestrictions) (*model.TeamStats, *model.AppError)
        + GetTeamUnread(teamID string, userID string) (*model.TeamUnread, *model.AppError)
        + GetTeams(teamIDs []string) ([]*model.Team, *model.AppError)
        + GetTeamsForRetentionPolicy(policyID string, offset int, limit int) (*model.TeamsWithCount, *model.AppError)
        + GetTeamsForScheme(scheme *model.Scheme, offset int, limit int) ([]*model.Team, *model.AppError)
        + GetTeamsForSchemePage(scheme *model.Scheme, page int, perPage int) ([]*model.Team, *model.AppError)
        + GetTeamsForUser(userID string) ([]*model.Team, *model.AppError)
        + GetTeamsUnreadForUser(excludeTeamId string, userID string, includeCollapsedThreads bool) ([]*model.TeamUnread, *model.AppError)
        + GetTeamsUsage() (*model.TeamsUsage, *model.AppError)
        + GetTermsOfService(id string) (*model.TermsOfService, *model.AppError)
        + GetThreadForUser(threadMembership *model.ThreadMembership, extended bool) (*model.ThreadResponse, *model.AppError)
        + GetThreadMembershipForUser(userId string, threadId string) (*model.ThreadMembership, *model.AppError)
        + GetThreadMembershipsForUser(userID string, teamID string) ([]*model.ThreadMembership, error)
        + GetThreadsForUser(userID string, teamID string, options model.GetUserThreadsOpts) (*model.Threads, *model.AppError)
        + GetTokenById(token string) (*model.Token, *model.AppError)
        + GetTotalUsersStats(viewRestrictions *model.ViewUsersRestrictions) (*model.UsersStats, *model.AppError)
        + GetTrueUpProfile() (<font color=blue>map</font>[string]any, error)
        + GetUploadSession(c request.CTX, uploadId string) (*model.UploadSession, *model.AppError)
        + GetUploadSessionsForUser(userID string) ([]*model.UploadSession, *model.AppError)
        + GetUser(userID string) (*model.User, *model.AppError)
        + GetUserAccessToken(tokenID string, sanitize bool) (*model.UserAccessToken, *model.AppError)
        + GetUserAccessTokens(page int, perPage int) ([]*model.UserAccessToken, *model.AppError)
        + GetUserAccessTokensForUser(userID string, page int, perPage int) ([]*model.UserAccessToken, *model.AppError)
        + GetUserByAuth(authData *string, authService string) (*model.User, *model.AppError)
        + GetUserByEmail(email string) (*model.User, *model.AppError)
        + GetUserByRemoteID(remoteID string) (*model.User, *model.AppError)
        + GetUserByUsername(username string) (*model.User, *model.AppError)
        + GetUserCountForReport(filter *model.UserReportOptions) (*int64, *model.AppError)
        + GetUserForLogin(c request.CTX, id string, loginId string) (*model.User, *model.AppError)
        + GetUserLimits() (*model.UserLimits, *model.AppError)
        + GetUserStatusesByIds(userIDs []string) ([]*model.Status, *model.AppError)
        + GetUserTermsOfService(userID string) (*model.UserTermsOfService, *model.AppError)
        + GetUsers(userIDs []string) ([]*model.User, *model.AppError)
        + GetUsersByGroupChannelIds(c request.CTX, channelIDs []string, asAdmin bool) (<font color=blue>map</font>[string][]*model.User, *model.AppError)
        + GetUsersByIds(userIDs []string, options *store.UserGetByIdsOpts) ([]*model.User, *model.AppError)
        + GetUsersByUsernames(usernames []string, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersEtag(restrictionsHash string) string
        + GetUsersForReporting(filter *model.UserReportOptions) ([]*model.UserReport, *model.AppError)
        + GetUsersFromProfiles(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannel(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelByAdmin(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelByStatus(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelMap(options *model.UserGetOptions, asAdmin bool) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetUsersInChannelPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersInChannelPageByAdmin(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersInChannelPageByStatus(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersInTeam(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInTeamEtag(teamID string, restrictionsHash string) string
        + GetUsersInTeamPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersNotInChannel(teamID string, channelID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersNotInChannelMap(teamID string, channelID string, groupConstrained bool, offset int, limit int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetUsersNotInChannelPage(teamID string, channelID string, groupConstrained bool, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersNotInGroupPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersNotInTeam(teamID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersNotInTeamEtag(teamID string, restrictionsHash string) string
        + GetUsersNotInTeamPage(teamID string, groupConstrained bool, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersWithInvalidEmails(page int, perPage int) ([]*model.User, *model.AppError)
        + GetUsersWithoutTeam(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersWithoutTeamPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetVerifyEmailToken(token string) (*model.Token, *model.AppError)
        + GetViewUsersRestrictions(c request.CTX, userID string) (*model.ViewUsersRestrictions, *model.AppError)
        + HandleCommandResponse(c request.CTX, command *model.Command, args *model.CommandArgs, response *model.CommandResponse, builtIn bool) (*model.CommandResponse, *model.AppError)
        + HandleCommandResponsePost(c request.CTX, command *model.Command, args *model.CommandArgs, response *model.CommandResponse, builtIn bool) (*model.Post, *model.AppError)
        + HandleCommandWebhook(c request.CTX, hookID string, response *model.CommandResponse) *model.AppError
        + HandleImages(rctx request.CTX, previewPathList []string, thumbnailPathList []string, fileData [][]byte) 
        + HandleIncomingWebhook(c request.CTX, hookID string, req *model.IncomingWebhookRequest) *model.AppError
        + HandleMessageExportConfig(cfg *model.Config, appCfg *model.Config) 
        + HasPermissionTo(askingUserId string, permission *model.Permission) bool
        + HasPermissionToChannel(c request.CTX, askingUserId string, channelID string, permission *model.Permission) bool
        + HasPermissionToChannelByPost(c request.CTX, askingUserId string, postID string, permission *model.Permission) bool
        + HasPermissionToReadChannel(c request.CTX, userID string, channel *model.Channel) bool
        + HasPermissionToTeam(c request.CTX, askingUserId string, teamID string, permission *model.Permission) bool
        + HasPermissionToUser(askingUserId string, userID string) bool
        + HasRemote(channelID string, remoteID string) (bool, error)
        + HasSharedChannel(channelID string) (bool, error)
        + HubRegister(webConn *platform.WebConn) 
        + HubUnregister(webConn *platform.WebConn) 
        + IPFiltering() einterfaces.IPFilteringInterface
        + ImageProxyAdder() <font color=blue>func</font>(string) string
        + ImageProxyRemover() <font color=blue>func</font>(string) string
        + ImportPermissions(jsonl io.Reader) error
        + InitPlugins(c request.CTX, pluginDir string, webappPluginDir string) 
        + InstallPlugin(pluginFile io.ReadSeeker, replace bool) (*model.Manifest, *model.AppError)
        + InvalidateAllEmailInvites(c request.CTX) *model.AppError
        + InvalidateAllResendInviteEmailJobs(c request.CTX) *model.AppError
        + InvalidateCacheForUser(userID string) 
        + InvalidatePasswordRecoveryTokensForUser(userID string) *model.AppError
        + InviteGuestsToChannels(teamID string, guestsInvite *model.GuestsInvite, senderId string) *model.AppError
        + InviteGuestsToChannelsGracefully(teamID string, guestsInvite *model.GuestsInvite, senderId string) ([]*model.EmailInviteWithError, *model.AppError)
        + InviteNewUsersToTeam(emailList []string, teamID string, senderId string) *model.AppError
        + InviteNewUsersToTeamGracefully(memberInvite *model.MemberInvite, teamID string, senderId string, reminderInterval string) ([]*model.EmailInviteWithError, *model.AppError)
        + InviteRemoteToChannel(channelID string, remoteID string, userID string, shareIfNotShared bool) error
        + IsCRTEnabledForUser(c request.CTX, userID string) bool
        + IsConfigReadOnly() bool
        + IsFirstUserAccount() bool
        + IsLeader() bool
        + IsPasswordValid(rctx request.CTX, password string) *model.AppError
        + IsPersistentNotificationsEnabled() bool
        + IsPhase2MigrationCompleted() *model.AppError
        + IsPluginActive(pluginName string) (bool, error)
        + IsPostPriorityEnabled() bool
        + IsUserSignUpAllowed() *model.AppError
        + JoinChannel(c request.CTX, channel *model.Channel, userID string) *model.AppError
        + JoinDefaultChannels(c request.CTX, teamID string, user *model.User, shouldBeAdmin bool, userRequestorId string) *model.AppError
        + JoinUserToTeam(c request.CTX, team *model.Team, user *model.User, userRequestorId string) (*model.TeamMember, *model.AppError)
        + LeaveChannel(c request.CTX, channelID string, userID string) *model.AppError
        + LeaveTeam(c request.CTX, team *model.Team, user *model.User, requestorId string) *model.AppError
        + License() *model.License
        + LimitedClientConfig() <font color=blue>map</font>[string]string
        + ListAllCommands(teamID string, T i18n.TranslateFunc) ([]*model.Command, *model.AppError)
        + ListAutocompleteCommands(teamID string, T i18n.TranslateFunc) ([]*model.Command, *model.AppError)
        + ListDirectory(path string) ([]string, *model.AppError)
        + ListDirectoryRecursively(path string) ([]string, *model.AppError)
        + ListExportDirectory(path string) ([]string, *model.AppError)
        + ListExports() ([]string, *model.AppError)
        + ListImports() ([]string, *model.AppError)
        + ListPluginKeys(pluginID string, page int, perPage int) ([]string, *model.AppError)
        + ListTeamCommands(teamID string) ([]*model.Command, *model.AppError)
        + LogAuditRec(rctx request.CTX, rec *audit.Record, err error) 
        + LogAuditRecWithLevel(rctx request.CTX, rec *audit.Record, level mlog.Level, err error) 
        + LoginByOAuth(c request.CTX, service string, userData io.Reader, teamID string, tokenUser *model.User) (*model.User, *model.AppError)
        + MakeAuditRecord(rctx request.CTX, event string, initialStatus string) *audit.Record
        + MarkChannelAsUnreadFromPost(c request.CTX, postID string, userID string, collapsedThreadsSupported bool) (*model.ChannelUnreadAt, *model.AppError)
        + MarkChannelsAsViewed(c request.CTX, channelIDs []string, userID string, currentSessionId string, collapsedThreadsSupported bool, isCRTEnabled bool) (<font color=blue>map</font>[string]int64, *model.AppError)
        + MaxPostSize() int
        + MentionsToPublicChannels(c request.CTX, message string, teamID string) model.ChannelMentionMap
        + MentionsToTeamMembers(c request.CTX, message string, teamID string) model.UserMentionMap
        + MigrateFilenamesToFileInfos(rctx request.CTX, post *model.Post) []*model.FileInfo
        + MigrateIdLDAP(c request.CTX, toAttribute string) *model.AppError
        + MoveChannel(c request.CTX, team *model.Team, channel *model.Channel, user *model.User) *model.AppError
        + MoveCommand(team *model.Team, command *model.Command) *model.AppError
        + MoveFile(oldPath string, newPath string) *model.AppError
        + MoveThread(c request.CTX, postID string, sourceChannelID string, channelID string, user *model.User) *model.AppError
        + NewPluginAPI(c request.CTX, manifest *model.Manifest) plugin.API
        + NotifySelfHostedSignupProgress(progress string, userId string) 
        + NotifySessionsExpired() error
        + NotifySharedChannelUserUpdate(user *model.User) 
        + OnSharedChannelsAttachmentSyncMsg(fi *model.FileInfo, post *model.Post, rc *model.RemoteCluster) error
        + OnSharedChannelsPing(rc *model.RemoteCluster) bool
        + OnSharedChannelsProfileImageSyncMsg(user *model.User, rc *model.RemoteCluster) error
        + OnSharedChannelsSyncMsg(msg *model.SyncMsg, rc *model.RemoteCluster) (model.SyncResponse, error)
        + OpenInteractiveDialog(request model.OpenDialogRequest) *model.AppError
        + OriginChecker() <font color=blue>func</font>(*http.Request) bool
        + OutgoingOAuthConnections() einterfaces.OutgoingOAuthConnectionInterface
        + OverrideIconURLIfEmoji(c request.CTX, post *model.Post) 
        + PatchBot(rctx request.CTX, botUserId string, botPatch *model.BotPatch) (*model.Bot, *model.AppError)
        + PatchChannel(c request.CTX, channel *model.Channel, patch *model.ChannelPatch, userID string) (*model.Channel, *model.AppError)
        + PatchChannelMembersNotifyProps(c request.CTX, members []*model.ChannelMemberIdentifier, notifyProps <font color=blue>map</font>[string]string) ([]*model.ChannelMember, *model.AppError)
        + PatchChannelModerationsForChannel(c request.CTX, channel *model.Channel, channelModerationsPatch []*model.ChannelModerationPatch) ([]*model.ChannelModeration, *model.AppError)
        + PatchPost(c request.CTX, postID string, patch *model.PostPatch) (*model.Post, *model.AppError)
        + PatchRetentionPolicy(patch *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + PatchRole(role *model.Role, patch *model.RolePatch) (*model.Role, *model.AppError)
        + PatchScheme(scheme *model.Scheme, patch *model.SchemePatch) (*model.Scheme, *model.AppError)
        + PatchTeam(teamID string, patch *model.TeamPatch) (*model.Team, *model.AppError)
        + PatchUser(c request.CTX, userID string, patch *model.UserPatch, asAdmin bool) (*model.User, *model.AppError)
        + PermanentDeleteAllUsers(c request.CTX) *model.AppError
        + PermanentDeleteBot(botUserId string) *model.AppError
        + PermanentDeleteChannel(c request.CTX, channel *model.Channel) *model.AppError
        + PermanentDeleteTeam(c request.CTX, team *model.Team) *model.AppError
        + PermanentDeleteTeamId(c request.CTX, teamID string) *model.AppError
        + PermanentDeleteUser(c request.CTX, user *model.User) *model.AppError
        + PopulateWebConnConfig(s *model.Session, cfg *platform.WebConnConfig, seqVal string) (*platform.WebConnConfig, error)
        + PostActionCookieSecret() []byte
        + PostAddToChannelMessage(c request.CTX, user *model.User, addedUser *model.User, channel *model.Channel, postRootId string) *model.AppError
        + PostPatchWithProxyRemovedFromImageURLs(patch *model.PostPatch) *model.PostPatch
        + PostUpdateChannelDisplayNameMessage(c request.CTX, userID string, channel *model.Channel, oldChannelDisplayName string, newChannelDisplayName string) *model.AppError
        + PostUpdateChannelHeaderMessage(c request.CTX, userID string, channel *model.Channel, oldChannelHeader string, newChannelHeader string) *model.AppError
        + PostUpdateChannelPurposeMessage(c request.CTX, userID string, channel *model.Channel, oldChannelPurpose string, newChannelPurpose string) *model.AppError
        + PostWithProxyAddedToImageURLs(post *model.Post) *model.Post
        + PostWithProxyRemovedFromImageURLs(post *model.Post) *model.Post
        + PreparePostForClient(c request.CTX, originalPost *model.Post, isNewPost bool, isEditPost bool, includePriority bool) *model.Post
        + PreparePostForClientWithEmbedsAndImages(c request.CTX, originalPost *model.Post, isNewPost bool, isEditPost bool, includePriority bool) *model.Post
        + PreparePostListForClient(c request.CTX, originalList *model.PostList) *model.PostList
        + ProcessSlackAttachments(attachments []*model.SlackAttachment) []*model.SlackAttachment
        + ProcessSlackText(text string) string
        + PromoteGuestToUser(c request.CTX, user *model.User, requestorId string) *model.AppError
        + Publish(message *model.WebSocketEvent) 
        + PublishUserTyping(userID string, channelID string, parentId string) *model.AppError
        + PurgeBleveIndexes(c request.CTX) *model.AppError
        + PurgeElasticsearchIndexes(c request.CTX) *model.AppError
        + QueryLogs(rctx request.CTX, page int, perPage int, logFilter *model.LogFilter) (<font color=blue>map</font>[string][]string, *model.AppError)
        + ReadFile(path string) ([]byte, *model.AppError)
        + RecycleDatabaseConnection(rctx request.CTX) 
        + RegenCommandToken(cmd *model.Command) (*model.Command, *model.AppError)
        + RegenOutgoingWebhookToken(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + RegenerateOAuthAppSecret(app *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + RegenerateTeamInviteId(teamID string) (*model.Team, *model.AppError)
        + RegisterPluginCommand(pluginID string, command *model.Command) error
        + RegisterPluginForSharedChannels(opts model.RegisterPluginOpts) (string, error)
        + ReloadConfig() error
        + RemoveAllDeactivatedMembersFromChannel(c request.CTX, channel *model.Channel) *model.AppError
        + RemoveChannelsFromRetentionPolicy(policyID string, channelIDs []string) *model.AppError
        + RemoveConfigListener(id string) 
        + RemoveCustomStatus(c request.CTX, userID string) *model.AppError
        + RemoveDirectory(path string) *model.AppError
        + RemoveExportFile(path string) *model.AppError
        + RemoveFile(path string) *model.AppError
        + RemoveLdapPrivateCertificate() *model.AppError
        + RemoveLdapPublicCertificate() *model.AppError
        + RemoveNotifications(c request.CTX, post *model.Post, channel *model.Channel) error
        + RemoveRecentCustomStatus(c request.CTX, userID string, status *model.CustomStatus) *model.AppError
        + RemoveSamlIdpCertificate() *model.AppError
        + RemoveSamlPrivateCertificate() *model.AppError
        + RemoveSamlPublicCertificate() *model.AppError
        + RemoveTeamIcon(teamID string) *model.AppError
        + RemoveTeamsFromRetentionPolicy(policyID string, teamIDs []string) *model.AppError
        + RemoveUserFromChannel(c request.CTX, userIDToRemove string, removerUserId string, channel *model.Channel) *model.AppError
        + RemoveUserFromTeam(c request.CTX, teamID string, userID string, requestorId string) *model.AppError
        + RemoveUsersFromChannelNotMemberOfTeam(c request.CTX, remover *model.User, channel *model.Channel, team *model.Team) *model.AppError
        + RenameChannel(c request.CTX, channel *model.Channel, newChannelName string, newDisplayName string) (*model.Channel, *model.AppError)
        + RenameTeam(team *model.Team, newTeamName string, newDisplayName string) (*model.Team, *model.AppError)
        + ResetPasswordFromToken(c request.CTX, userSuppliedTokenString string, newPassword string) *model.AppError
        + ResetPermissionsSystem() *model.AppError
        + ResetSamlAuthDataToEmail(includeDeleted bool, dryRun bool, userIDs []string) (int, *model.AppError)
        + ResolvePersistentNotification(c request.CTX, post *model.Post, loggedInUserID string) *model.AppError
        + RestoreChannel(c request.CTX, channel *model.Channel, userID string) (*model.Channel, *model.AppError)
        + RestoreGroup(groupID string) (*model.Group, *model.AppError)
        + RestoreTeam(teamID string) *model.AppError
        + RestrictUsersGetByPermissions(c request.CTX, userID string, options *model.UserGetOptions) (*model.UserGetOptions, *model.AppError)
        + RestrictUsersSearchByPermissions(c request.CTX, userID string, options *model.UserSearchOptions) (*model.UserSearchOptions, *model.AppError)
        + ReturnSessionToPool(session *model.Session) 
        + RevokeAccessToken(c request.CTX, token string) *model.AppError
        + RevokeAllSessions(c request.CTX, userID string) *model.AppError
        + RevokeSession(c request.CTX, session *model.Session) *model.AppError
        + RevokeSessionById(c request.CTX, sessionID string) *model.AppError
        + RevokeSessionsForDeviceId(c request.CTX, userID string, deviceID string, currentSessionId string) *model.AppError
        + RevokeSessionsFromAllUsers() *model.AppError
        + RevokeUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + RolesGrantPermission(roleNames []string, permissionId string) bool
        + SanitizePostListMetadataForUser(c request.CTX, postList *model.PostList, userID string) (*model.PostList, *model.AppError)
        + SanitizePostMetadataForUser(c request.CTX, post *model.Post, userID string) (*model.Post, *model.AppError)
        + SanitizeProfile(user *model.User, asAdmin bool) 
        + SanitizeTeam(session model.Session, team *model.Team) *model.Team
        + SanitizeTeams(session model.Session, teams []*model.Team) []*model.Team
        + SaveAcknowledgementForPost(c request.CTX, postID string, userID string) (*model.PostAcknowledgement, *model.AppError)
        + SaveAdminNotification(userId string, notifyData *model.NotifyAdminToUpgradeRequest) *model.AppError
        + SaveAdminNotifyData(data *model.NotifyAdminData) (*model.NotifyAdminData, *model.AppError)
        + SaveBrandImage(rctx request.CTX, imageData *multipart.FileHeader) *model.AppError
        + SaveComplianceReport(rctx request.CTX, job *model.Compliance) (*model.Compliance, *model.AppError)
        + SaveConfig(newCfg *model.Config, sendConfigChangeClusterMessage bool) (*model.Config, *model.Config, *model.AppError)
        + SaveReactionForPost(c request.CTX, reaction *model.Reaction) (*model.Reaction, *model.AppError)
        + SaveReportChunk(format string, prefix string, count int, reportData []model.ReportableObject) *model.AppError
        + SaveSharedChannelRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + SaveUserTermsOfService(userID string, termsOfServiceId string, accepted bool) *model.AppError
        + SchemesIterator(scope string, batchSize int) <font color=blue>func</font>() []*model.Scheme
        + SearchAllChannels(c request.CTX, term string, opts model.ChannelSearchOpts) (model.ChannelListWithTeamData, int64, *model.AppError)
        + SearchAllTeams(searchOpts *model.TeamSearch) ([]*model.Team, int64, *model.AppError)
        + SearchArchivedChannels(c request.CTX, teamID string, term string, userID string) (model.ChannelList, *model.AppError)
        + SearchChannels(c request.CTX, teamID string, term string) (model.ChannelList, *model.AppError)
        + SearchChannelsForUser(c request.CTX, userID string, teamID string, term string) (model.ChannelList, *model.AppError)
        + SearchChannelsUserNotIn(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + SearchEmoji(c request.CTX, name string, prefixOnly bool, limit int) ([]*model.Emoji, *model.AppError)
        + SearchEngine() *searchengine.Broker
        + SearchFilesInTeamForUser(c request.CTX, terms string, userId string, teamId string, isOrSearch bool, includeDeletedChannels bool, timeZoneOffset int, page int, perPage int) (*model.FileInfoList, *model.AppError)
        + SearchGroupChannels(c request.CTX, userID string, term string) (model.ChannelList, *model.AppError)
        + SearchPostsForUser(c request.CTX, terms string, userID string, teamID string, isOrSearch bool, includeDeletedChannels bool, timeZoneOffset int, page int, perPage int) (*model.PostSearchResults, *model.AppError)
        + SearchPostsInTeam(teamID string, paramsList []*model.SearchParams) (*model.PostList, *model.AppError)
        + SearchPrivateTeams(searchOpts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + SearchPublicTeams(searchOpts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + SearchUserAccessTokens(term string) ([]*model.UserAccessToken, *model.AppError)
        + SearchUsers(rctx request.CTX, props *model.UserSearch, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInChannel(channelID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInTeam(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInChannel(teamID string, channelID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInTeam(notInTeamId string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersWithoutTeam(term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SendAckToPushProxy(ack *model.PushNotificationAck) error
        + SendAutoResponse(rctx request.CTX, channel *model.Channel, receiver *model.User, post *model.Post) (bool, *model.AppError)
        + SendAutoResponseIfNecessary(rctx request.CTX, channel *model.Channel, sender *model.User, post *model.Post) (bool, *model.AppError)
        + SendDelinquencyEmail(emailToSend model.DelinquencyEmail) *model.AppError
        + SendEmailVerification(user *model.User, newEmail string, redirect string) *model.AppError
        + SendEphemeralPost(c request.CTX, userID string, post *model.Post) *model.Post
        + SendIPFiltersChangedEmail(c request.CTX, userID string) error
        + SendNoCardPaymentFailedEmail() *model.AppError
        + SendNotifications(c request.CTX, post *model.Post, team *model.Team, channel *model.Channel, sender *model.User, parentPostList *model.PostList, setOnline bool) ([]string, error)
        + SendNotifyAdminPosts(c request.CTX, workspaceName string, currentSKU string, trial bool) *model.AppError
        + SendPasswordReset(email string, siteURL string) (bool, *model.AppError)
        + SendPaymentFailedEmail(failedPayment *model.FailedPayment) *model.AppError
        + SendPersistentNotifications() error
        + SendReportToUser(rctx request.CTX, job *model.Job, format string) *model.AppError
        + SendSubscriptionHistoryEvent(userID string) (*model.SubscriptionHistory, error)
        + SendTestPushNotification(deviceID string) string
        + SendUpgradeConfirmationEmail(isYearly bool) *model.AppError
        + ServeInterPluginRequest(w http.ResponseWriter, r *http.Request, sourcePluginId string, destinationPluginId string) 
        + SessionHasPermissionTo(session model.Session, permission *model.Permission) bool
        + SessionHasPermissionToAny(session model.Session, permissions []*model.Permission) bool
        + SessionHasPermissionToCategory(c request.CTX, session model.Session, userID string, teamID string, categoryId string) bool
        + SessionHasPermissionToChannel(c request.CTX, session model.Session, channelID string, permission *model.Permission) bool
        + SessionHasPermissionToChannelByPost(session model.Session, postID string, permission *model.Permission) bool
        + SessionHasPermissionToChannels(c request.CTX, session model.Session, channelIDs []string, permission *model.Permission) bool
        + SessionHasPermissionToCreateJob(session model.Session, job *model.Job) (bool, *model.Permission)
        + SessionHasPermissionToGroup(session model.Session, groupID string, permission *model.Permission) bool
        + SessionHasPermissionToManageBot(session model.Session, botUserId string) *model.AppError
        + SessionHasPermissionToReadJob(session model.Session, jobType string) (bool, *model.Permission)
        + SessionHasPermissionToTeam(session model.Session, teamID string, permission *model.Permission) bool
        + SessionHasPermissionToTeams(c request.CTX, session model.Session, teamIDs []string, permission *model.Permission) bool
        + SessionHasPermissionToUser(session model.Session, userID string) bool
        + SessionHasPermissionToUserOrBot(session model.Session, userID string) bool
        + SessionIsRegistered(session model.Session) bool
        + SetActiveChannel(c request.CTX, userID string, channelID string) *model.AppError
        + SetAutoResponderStatus(rctx request.CTX, user *model.User, oldNotifyProps model.StringMap) 
        + SetChannels(ch *app.Channels) 
        + SetCustomStatus(c request.CTX, userID string, cs *model.CustomStatus) *model.AppError
        + SetDefaultProfileImage(c request.CTX, user *model.User) *model.AppError
        + SetFileSearchableContent(rctx request.CTX, fileID string, data string) *model.AppError
        + SetPhase2PermissionsMigrationStatus(isComplete bool) error
        + SetPluginKey(pluginID string, key string, value []byte) *model.AppError
        + SetPluginKeyWithExpiry(pluginID string, key string, value []byte, expireInSeconds int64) *model.AppError
        + SetPluginKeyWithOptions(pluginID string, key string, value []byte, options model.PluginKVSetOptions) (bool, *model.AppError)
        + SetPostReminder(postID string, userID string, targetTime int64) *model.AppError
        + SetProfileImage(c request.CTX, userID string, imageData *multipart.FileHeader) *model.AppError
        + SetProfileImageFromFile(c request.CTX, userID string, file io.Reader) *model.AppError
        + SetProfileImageFromMultiPartFile(c request.CTX, userID string, file multipart.File) *model.AppError
        + SetRemoteClusterLastPingAt(remoteClusterId string) *model.AppError
        + SetSamlIdpCertificateFromMetadata(data []byte) *model.AppError
        + SetSearchEngine(se *searchengine.Broker) 
        + SetSessionExpireInHours(session *model.Session, hours int) 
        + SetStatusAwayIfNeeded(userID string, manual bool) 
        + SetStatusDoNotDisturb(userID string) 
        + SetStatusDoNotDisturbTimed(userId string, endtime int64) 
        + SetStatusLastActivityAt(userID string, activityAt int64) 
        + SetStatusOffline(userID string, manual bool) 
        + SetStatusOnline(userID string, manual bool) 
        + SetStatusOutOfOffice(userID string) 
        + SetTeamIcon(teamID string, imageData *multipart.FileHeader) *model.AppError
        + SetTeamIconFromFile(team *model.Team, file io.Reader) *model.AppError
        + SetTeamIconFromMultiPartFile(teamID string, file multipart.File) *model.AppError
        + ShareChannel(c request.CTX, sc *model.SharedChannel) (*model.SharedChannel, error)
        + ShouldSendPushNotification(user *model.User, channelNotifyProps model.StringMap, wasMentioned bool, status *model.Status, post *model.Post, isGM bool) bool
        + SlackImport(c request.CTX, fileData multipart.File, fileSize int64, teamID string) (*model.AppError, *bytes.Buffer)
        + SoftDeleteTeam(teamID string) *model.AppError
        + StartUsersBatchExport(rctx request.CTX, dateRange string, startAt int64, endAt int64) *model.AppError
        + SubmitInteractiveDialog(c request.CTX, request model.SubmitDialogRequest) (*model.SubmitDialogResponse, *model.AppError)
        + SwitchEmailToLdap(c request.CTX, email string, password string, code string, ldapLoginId string, ldapPassword string) (string, *model.AppError)
        + SwitchEmailToOAuth(c request.CTX, w http.ResponseWriter, r *http.Request, email string, password string, code string, service string) (string, *model.AppError)
        + SwitchLdapToEmail(c request.CTX, ldapPassword string, code string, email string, newPassword string) (string, *model.AppError)
        + SwitchOAuthToEmail(c request.CTX, email string, password string, requesterId string) (string, *model.AppError)
        + SyncLdap(c request.CTX, includeRemovedMembers bool) 
        + SyncPlugins() *model.AppError
        + SyncRolesAndMembership(c request.CTX, syncableID string, syncableType model.GroupSyncableType, includeRemovedMembers bool) 
        + SyncSharedChannel(channelID string) error
        + SyncSyncableRoles(syncableID string, syncableType model.GroupSyncableType) *model.AppError
        + TeamMembersMinusGroupMembers(teamID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, int64, *model.AppError)
        + TeamMembersToAdd(since int64, teamID *string, includeRemovedMembers bool) ([]*model.UserTeamIDPair, *model.AppError)
        + TeamMembersToRemove(teamID *string) ([]*model.TeamMember, *model.AppError)
        + TelemetryId() string
        + TestElasticsearch(rctx request.CTX, cfg *model.Config) *model.AppError
        + TestEmail(rctx request.CTX, userID string, cfg *model.Config) *model.AppError
        + TestFileStoreConnection() *model.AppError
        + TestFileStoreConnectionWithConfig(cfg *model.FileSettings) *model.AppError
        + TestLdap(rctx request.CTX) *model.AppError
        + TestSiteURL(rctx request.CTX, siteURL string) *model.AppError
        + ToggleMuteChannel(c request.CTX, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + TotalWebsocketConnections() int
        + TriggerWebhook(c request.CTX, payload *model.OutgoingWebhookPayload, hook *model.OutgoingWebhook, post *model.Post, channel *model.Channel) 
        + UninviteRemoteFromChannel(channelID string, remoteID string) error
        + UnregisterPluginCommand(pluginID string, teamID string, trigger string) 
        + UnregisterPluginForSharedChannels(pluginID string) error
        + UnshareChannel(channelID string) (bool, error)
        + UpdateActive(c request.CTX, user *model.User, active bool) (*model.User, *model.AppError)
        + UpdateBotActive(c request.CTX, botUserId string, active bool) (*model.Bot, *model.AppError)
        + UpdateBotOwner(botUserId string, newOwnerId string) (*model.Bot, *model.AppError)
        + UpdateChannel(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + UpdateChannelMemberNotifyProps(c request.CTX, data <font color=blue>map</font>[string]string, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + UpdateChannelMemberRoles(c request.CTX, channelID string, userID string, newRoles string) (*model.ChannelMember, *model.AppError)
        + UpdateChannelMemberSchemeRoles(c request.CTX, channelID string, userID string, isSchemeGuest bool, isSchemeUser bool, isSchemeAdmin bool) (*model.ChannelMember, *model.AppError)
        + UpdateChannelPrivacy(c request.CTX, oldChannel *model.Channel, user *model.User) (*model.Channel, *model.AppError)
        + UpdateChannelScheme(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + UpdateCommand(oldCmd *model.Command, updatedCmd *model.Command) (*model.Command, *model.AppError)
        + UpdateConfig(f <font color=blue>func</font>(*model.Config) ) 
        + UpdateDNDStatusOfUsers() 
        + UpdateDefaultProfileImage(c request.CTX, user *model.User) *model.AppError
        + UpdateEphemeralPost(c request.CTX, userID string, post *model.Post) *model.Post
        + UpdateExpiredDNDStatuses() ([]*model.Status, error)
        + UpdateGroup(group *model.Group) (*model.Group, *model.AppError)
        + UpdateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, *model.AppError)
        + UpdateHashedPassword(user *model.User, newHashedPassword string) *model.AppError
        + UpdateHashedPasswordByUserId(userID string, newHashedPassword string) *model.AppError
        + UpdateIncomingWebhook(oldHook *model.IncomingWebhook, updatedHook *model.IncomingWebhook) (*model.IncomingWebhook, *model.AppError)
        + UpdateMfa(c request.CTX, activate bool, userID string, token string) *model.AppError
        + UpdateMobileAppBadge(userID string) 
        + UpdateOAuthApp(oldApp *model.OAuthApp, updatedApp *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + UpdateOAuthUserAttrs(c request.CTX, userData io.Reader, user *model.User, provider einterfaces.OAuthProvider, service string, tokenUser *model.User) *model.AppError
        + UpdateOutgoingWebhook(c request.CTX, oldHook *model.OutgoingWebhook, updatedHook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + UpdatePassword(rctx request.CTX, user *model.User, newPassword string) *model.AppError
        + UpdatePasswordAsUser(c request.CTX, userID string, currentPassword string, newPassword string) *model.AppError
        + UpdatePasswordByUserIdSendEmail(c request.CTX, userID string, newPassword string, method string) *model.AppError
        + UpdatePasswordSendEmail(c request.CTX, user *model.User, newPassword string, method string) *model.AppError
        + UpdatePost(c request.CTX, receivedUpdatedPost *model.Post, safeUpdate bool) (*model.Post, *model.AppError)
        + UpdatePreferences(c request.CTX, userID string, preferences model.Preferences) *model.AppError
        + UpdateProductNotices() *model.AppError
        + UpdateRemoteCluster(rc *model.RemoteCluster) (*model.RemoteCluster, *model.AppError)
        + UpdateRemoteClusterTopics(remoteClusterId string, topics string) (*model.RemoteCluster, *model.AppError)
        + UpdateRole(role *model.Role) (*model.Role, *model.AppError)
        + UpdateScheme(scheme *model.Scheme) (*model.Scheme, *model.AppError)
        + UpdateSharedChannel(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UpdateSharedChannelCursor(channelID string, remoteID string, cursor model.GetPostsSinceForSyncCursor) error
        + UpdateSharedChannelRemoteCursor(id string, cursor model.GetPostsSinceForSyncCursor) error
        + UpdateSidebarCategories(c request.CTX, userID string, teamID string, categories []*model.SidebarCategoryWithChannels) ([]*model.SidebarCategoryWithChannels, *model.AppError)
        + UpdateSidebarCategoryOrder(c request.CTX, userID string, teamID string, categoryOrder []string) *model.AppError
        + UpdateTeam(team *model.Team) (*model.Team, *model.AppError)
        + UpdateTeamMemberRoles(c request.CTX, teamID string, userID string, newRoles string) (*model.TeamMember, *model.AppError)
        + UpdateTeamMemberSchemeRoles(c request.CTX, teamID string, userID string, isSchemeGuest bool, isSchemeUser bool, isSchemeAdmin bool) (*model.TeamMember, *model.AppError)
        + UpdateTeamPrivacy(teamID string, teamType string, allowOpenInvite bool) *model.AppError
        + UpdateTeamScheme(team *model.Team) (*model.Team, *model.AppError)
        + UpdateThreadFollowForUser(userID string, teamID string, threadID string, state bool) *model.AppError
        + UpdateThreadFollowForUserFromChannelAdd(c request.CTX, userID string, teamID string, threadID string) *model.AppError
        + UpdateThreadReadForUser(c request.CTX, currentSessionId string, userID string, teamID string, threadID string, timestamp int64) (*model.ThreadResponse, *model.AppError)
        + UpdateThreadReadForUserByPost(c request.CTX, currentSessionId string, userID string, teamID string, threadID string, postID string) (*model.ThreadResponse, *model.AppError)
        + UpdateThreadsReadForUser(userID string, teamID string) *model.AppError
        + UpdateUser(c request.CTX, user *model.User, sendNotifications bool) (*model.User, *model.AppError)
        + UpdateUserActive(c request.CTX, userID string, active bool) *model.AppError
        + UpdateUserAsUser(c request.CTX, user *model.User, asAdmin bool) (*model.User, *model.AppError)
        + UpdateUserAuth(c request.CTX, userID string, userAuth *model.UserAuth) (*model.UserAuth, *model.AppError)
        + UpdateUserRoles(c request.CTX, userID string, newRoles string, sendWebSocketEvent bool) (*model.User, *model.AppError)
        + UpdateUserRolesWithUser(c request.CTX, user *model.User, newRoles string, sendWebSocketEvent bool) (*model.User, *model.AppError)
        + UpdateViewedProductNotices(userID string, noticeIds []string) *model.AppError
        + UpdateViewedProductNoticesForNewUser(userID string) 
        + UpdateWebConnUserActivity(session model.Session, activityAt int64) 
        + UploadData(c request.CTX, us *model.UploadSession, rd io.Reader) (*model.FileInfo, *model.AppError)
        + UploadFile(c request.CTX, data []byte, channelID string, filename string) (*model.FileInfo, *model.AppError)
        + UploadFileForUserAndTeam(c request.CTX, data []byte, channelID string, filename string, rawUserId string, rawTeamId string) (*model.FileInfo, *model.AppError)
        + UploadFileX(c request.CTX, channelID string, name string, input io.Reader, opts ...<font color=blue>func</font>(*app.UploadFileTask) ) (*model.FileInfo, *model.AppError)
        + UpsertDraft(c request.CTX, draft *model.Draft, connectionID string) (*model.Draft, *model.AppError)
        + UpsertGroupMember(groupID string, userID string) (*model.GroupMember, *model.AppError)
        + UpsertGroupMembers(groupID string, userIDs []string) ([]*model.GroupMember, *model.AppError)
        + UpsertGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, *model.AppError)
        + UserAlreadyNotifiedOnRequiredFeature(user string, feature model.MattermostFeature) bool
        + UserCanSeeOtherUser(c request.CTX, userID string, otherUserId string) (bool, *model.AppError)
        + UserIsFirstAdmin(user *model.User) bool
        + UserIsInAdminRoleGroup(userID string, syncableID string, syncableType model.GroupSyncableType) (bool, *model.AppError)
        + ValidateDesktopToken(token string, expiryTime int64) (*model.User, *model.AppError)
        + ValidateMoveOrCopy(c request.CTX, wpl *model.WranglerPostList, originalChannel *model.Channel, targetChannel *model.Channel, user *model.User) error
        + ValidateUserPermissionsOnChannels(c request.CTX, userId string, channelIds []string) []string
        + VerifyEmailFromToken(c request.CTX, userSuppliedTokenString string) *model.AppError
        + VerifyPlugin(plugin io.ReadSeeker, signature io.ReadSeeker) *model.AppError
        + VerifyUserEmail(userID string, email string) *model.AppError
        + ViewChannel(c request.CTX, view *model.ChannelView, userID string, currentSessionId string, collapsedThreadsSupported bool) (<font color=blue>map</font>[string]int64, *model.AppError)
        + WriteExportFile(fr io.Reader, path string) (int64, *model.AppError)
        + WriteExportFileContext(ctx context.Context, fr io.Reader, path string) (int64, *model.AppError)
        + WriteFile(fr io.Reader, path string) (int64, *model.AppError)
        + WriteFileContext(ctx context.Context, fr io.Reader, path string) (int64, *model.AppError)
        + Srv() *app.Server
        + Log() *mlog.Logger
        + NotificationsLog() *mlog.Logger
        + AccountMigration() einterfaces.AccountMigrationInterface
        + Cluster() einterfaces.ClusterInterface
        + Compliance() einterfaces.ComplianceInterface
        + DataRetention() einterfaces.DataRetentionInterface
        + Ldap() einterfaces.LdapInterface
        + MessageExport() einterfaces.MessageExportInterface
        + Metrics() einterfaces.MetricsInterface
        + Notification() einterfaces.NotificationInterface
        + Saml() einterfaces.SamlInterface
        + HTTPService() httpservice.HTTPService
        + ImageProxy() *imageproxy.ImageProxy
        + Timezones() *timezones.Timezones
        + SetServer(srv *app.Server) 

    }
}

"app.configService" <|-- "opentracing.OpenTracingAppLayer"
"export_delete.AppIface" <|-- "opentracing.OpenTracingAppLayer"
"export_process.AppIface" <|-- "opentracing.OpenTracingAppLayer"
"export_users_to_csv.ExportUsersToCSVAppIFace" <|-- "opentracing.OpenTracingAppLayer"
"extract_content.AppIface" <|-- "opentracing.OpenTracingAppLayer"
"import_delete.AppIface" <|-- "opentracing.OpenTracingAppLayer"
"import_process.AppIface" <|-- "opentracing.OpenTracingAppLayer"
"jobs.BatchMigrationWorkerAppIFace" <|-- "opentracing.OpenTracingAppLayer"
"jobs.BatchReportWorkerAppIFace" <|-- "opentracing.OpenTracingAppLayer"
"last_accessible_file.AppIface" <|-- "opentracing.OpenTracingAppLayer"
"last_accessible_post.AppIface" <|-- "opentracing.OpenTracingAppLayer"
"notify_admin.AppIface" <|-- "opentracing.OpenTracingAppLayer"
"platform.SuiteIFace" <|-- "opentracing.OpenTracingAppLayer"
"plugins.AppIface" <|-- "opentracing.OpenTracingAppLayer"
"post_persistent_notifications.AppIface" <|-- "opentracing.OpenTracingAppLayer"
"product_notices.AppIface" <|-- "opentracing.OpenTracingAppLayer"
"resend_invitation_email.AppIface" <|-- "opentracing.OpenTracingAppLayer"
"teams.WebHub" <|-- "opentracing.OpenTracingAppLayer"

namespace opentracinglayer {
    class OpenTracingLayer << (S,Aquamarine) >> {
        + AuditStore store.AuditStore
        + BotStore store.BotStore
        + ChannelStore store.ChannelStore
        + ChannelMemberHistoryStore store.ChannelMemberHistoryStore
        + ClusterDiscoveryStore store.ClusterDiscoveryStore
        + CommandStore store.CommandStore
        + CommandWebhookStore store.CommandWebhookStore
        + ComplianceStore store.ComplianceStore
        + DesktopTokensStore store.DesktopTokensStore
        + DraftStore store.DraftStore
        + EmojiStore store.EmojiStore
        + FileInfoStore store.FileInfoStore
        + GroupStore store.GroupStore
        + JobStore store.JobStore
        + LicenseStore store.LicenseStore
        + LinkMetadataStore store.LinkMetadataStore
        + NotifyAdminStore store.NotifyAdminStore
        + OAuthStore store.OAuthStore
        + OutgoingOAuthConnectionStore store.OutgoingOAuthConnectionStore
        + PluginStore store.PluginStore
        + PostStore store.PostStore
        + PostAcknowledgementStore store.PostAcknowledgementStore
        + PostPersistentNotificationStore store.PostPersistentNotificationStore
        + PostPriorityStore store.PostPriorityStore
        + PreferenceStore store.PreferenceStore
        + ProductNoticesStore store.ProductNoticesStore
        + ReactionStore store.ReactionStore
        + RemoteClusterStore store.RemoteClusterStore
        + RetentionPolicyStore store.RetentionPolicyStore
        + RoleStore store.RoleStore
        + SchemeStore store.SchemeStore
        + SessionStore store.SessionStore
        + SharedChannelStore store.SharedChannelStore
        + StatusStore store.StatusStore
        + SystemStore store.SystemStore
        + TeamStore store.TeamStore
        + TermsOfServiceStore store.TermsOfServiceStore
        + ThreadStore store.ThreadStore
        + TokenStore store.TokenStore
        + TrueUpReviewStore store.TrueUpReviewStore
        + UploadSessionStore store.UploadSessionStore
        + UserStore store.UserStore
        + UserAccessTokenStore store.UserAccessTokenStore
        + UserTermsOfServiceStore store.UserTermsOfServiceStore
        + WebhookStore store.WebhookStore

        + Audit() store.AuditStore
        + Bot() store.BotStore
        + Channel() store.ChannelStore
        + ChannelMemberHistory() store.ChannelMemberHistoryStore
        + ClusterDiscovery() store.ClusterDiscoveryStore
        + Command() store.CommandStore
        + CommandWebhook() store.CommandWebhookStore
        + Compliance() store.ComplianceStore
        + DesktopTokens() store.DesktopTokensStore
        + Draft() store.DraftStore
        + Emoji() store.EmojiStore
        + FileInfo() store.FileInfoStore
        + Group() store.GroupStore
        + Job() store.JobStore
        + License() store.LicenseStore
        + LinkMetadata() store.LinkMetadataStore
        + NotifyAdmin() store.NotifyAdminStore
        + OAuth() store.OAuthStore
        + OutgoingOAuthConnection() store.OutgoingOAuthConnectionStore
        + Plugin() store.PluginStore
        + Post() store.PostStore
        + PostAcknowledgement() store.PostAcknowledgementStore
        + PostPersistentNotification() store.PostPersistentNotificationStore
        + PostPriority() store.PostPriorityStore
        + Preference() store.PreferenceStore
        + ProductNotices() store.ProductNoticesStore
        + Reaction() store.ReactionStore
        + RemoteCluster() store.RemoteClusterStore
        + RetentionPolicy() store.RetentionPolicyStore
        + Role() store.RoleStore
        + Scheme() store.SchemeStore
        + Session() store.SessionStore
        + SharedChannel() store.SharedChannelStore
        + Status() store.StatusStore
        + System() store.SystemStore
        + Team() store.TeamStore
        + TermsOfService() store.TermsOfServiceStore
        + Thread() store.ThreadStore
        + Token() store.TokenStore
        + TrueUpReview() store.TrueUpReviewStore
        + UploadSession() store.UploadSessionStore
        + User() store.UserStore
        + UserAccessToken() store.UserAccessTokenStore
        + UserTermsOfService() store.UserTermsOfServiceStore
        + Webhook() store.WebhookStore
        + Close() 
        + DropAllTables() 
        + LockToMaster() 
        + MarkSystemRanUnitTests() 
        + SetContext(context context.Context) 
        + TotalMasterDbConnections() int
        + TotalReadDbConnections() int
        + TotalSearchDbConnections() int
        + UnlockFromMaster() 

    }
    class OpenTracingLayerAuditStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Get(user_id string, offset int, limit int) (model.Audits, error)
        + PermanentDeleteByUser(userID string) error
        + Save(audit *model.Audit) error

    }
    class OpenTracingLayerBotStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Get(userID string, includeDeleted bool) (*model.Bot, error)
        + GetAll(options *model.BotGetOptions) ([]*model.Bot, error)
        + PermanentDelete(userID string) error
        + Save(bot *model.Bot) (*model.Bot, error)
        + Update(bot *model.Bot) (*model.Bot, error)

    }
    class OpenTracingLayerChannelMemberHistoryStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + DeleteOrphanedRows(limit int) (int64, error)
        + GetChannelsLeftSince(userID string, since int64) ([]string, error)
        + GetUsersInChannelDuring(startTime int64, endTime int64, channelID string) ([]*model.ChannelMemberHistoryResult, error)
        + LogJoinEvent(userID string, channelID string, joinTime int64) error
        + LogLeaveEvent(userID string, channelID string, leaveTime int64) error
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)

    }
    class OpenTracingLayerChannelStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + AnalyticsDeletedTypeCount(teamID string, channelType model.ChannelType) (int64, error)
        + AnalyticsTypeCount(teamID string, channelType model.ChannelType) (int64, error)
        + Autocomplete(rctx request.CTX, userID string, term string, includeDeleted bool, isGuest bool) (model.ChannelListWithTeamData, error)
        + AutocompleteInTeam(rctx request.CTX, teamID string, userID string, term string, includeDeleted bool, isGuest bool) (model.ChannelList, error)
        + AutocompleteInTeamForSearch(teamID string, userID string, term string, includeDeleted bool) (model.ChannelList, error)
        + ClearAllCustomRoleAssignments() error
        + ClearCaches() 
        + ClearMembersForUserCache() 
        + ClearSidebarOnTeamLeave(userID string, teamID string) error
        + CountPostsAfter(channelID string, timestamp int64, excludedUserID string) (int, int, error)
        + CountUrgentPostsAfter(channelID string, timestamp int64, excludedUserID string) (int, error)
        + CreateDirectChannel(ctx request.CTX, userID *model.User, otherUserID *model.User, channelOptions ...model.ChannelOption) (*model.Channel, error)
        + CreateInitialSidebarCategories(c request.CTX, userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, error)
        + CreateSidebarCategory(userID string, teamID string, newCategory *model.SidebarCategoryWithChannels) (*model.SidebarCategoryWithChannels, error)
        + Delete(channelID string, timestamp int64) error
        + DeleteAllSidebarChannelForChannel(channelID string) error
        + DeleteSidebarCategory(categoryID string) error
        + DeleteSidebarChannelsByPreferences(preferences model.Preferences) error
        + Get(id string, allowFromCache bool) (*model.Channel, error)
        + GetAll(teamID string) ([]*model.Channel, error)
        + GetAllChannelMemberIdsByChannelId(id string) ([]string, error)
        + GetAllChannelMembersForUser(userID string, allowFromCache bool, includeDeleted bool) (<font color=blue>map</font>[string]string, error)
        + GetAllChannelMembersNotifyPropsForChannel(channelID string, allowFromCache bool) (<font color=blue>map</font>[string]model.StringMap, error)
        + GetAllChannels(page int, perPage int, opts store.ChannelSearchOpts) (model.ChannelListWithTeamData, error)
        + GetAllChannelsCount(opts store.ChannelSearchOpts) (int64, error)
        + GetAllChannelsForExportAfter(limit int, afterID string) ([]*model.ChannelForExport, error)
        + GetAllDirectChannelsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.DirectChannelForExport, error)
        + GetByName(team_id string, name string, allowFromCache bool) (*model.Channel, error)
        + GetByNameIncludeDeleted(team_id string, name string, allowFromCache bool) (*model.Channel, error)
        + GetByNames(team_id string, names []string, allowFromCache bool) ([]*model.Channel, error)
        + GetByNamesIncludeDeleted(team_id string, names []string, allowFromCache bool) ([]*model.Channel, error)
        + GetChannelCounts(teamID string, userID string) (*model.ChannelCounts, error)
        + GetChannelMembersForExport(userID string, teamID string, includeArchivedChannel bool) ([]*model.ChannelMemberForExport, error)
        + GetChannelMembersTimezones(channelID string) ([]model.StringMap, error)
        + GetChannelUnread(channelID string, userID string) (*model.ChannelUnread, error)
        + GetChannels(teamID string, userID string, opts *model.ChannelSearchOpts) (model.ChannelList, error)
        + GetChannelsBatchForIndexing(startTime int64, startChannelID string, limit int) ([]*model.Channel, error)
        + GetChannelsByIds(channelIds []string, includeDeleted bool) ([]*model.Channel, error)
        + GetChannelsByScheme(schemeID string, offset int, limit int) (model.ChannelList, error)
        + GetChannelsByUser(userID string, includeDeleted bool, lastDeleteAt int, pageSize int, fromChannelID string) (model.ChannelList, error)
        + GetChannelsMemberCount(channelIDs []string) (<font color=blue>map</font>[string]int64, error)
        + GetChannelsWithTeamDataByIds(channelIds []string, includeDeleted bool) ([]*model.ChannelWithTeamData, error)
        + GetChannelsWithUnreadsAndWithMentions(ctx context.Context, channelIDs []string, userID string, userNotifyProps model.StringMap) ([]string, []string, <font color=blue>map</font>[string]int64, error)
        + GetDeleted(team_id string, offset int, limit int, userID string) (model.ChannelList, error)
        + GetDeletedByName(team_id string, name string) (*model.Channel, error)
        + GetFileCount(channelID string) (int64, error)
        + GetForPost(postID string) (*model.Channel, error)
        + GetGuestCount(channelID string, allowFromCache bool) (int64, error)
        + GetMany(ids []string, allowFromCache bool) (model.ChannelList, error)
        + GetMember(ctx context.Context, channelID string, userID string) (*model.ChannelMember, error)
        + GetMemberCount(channelID string, allowFromCache bool) (int64, error)
        + GetMemberCountFromCache(channelID string) int64
        + GetMemberCountsByGroup(ctx context.Context, channelID string, includeTimezones bool) ([]*model.ChannelMemberCountByGroup, error)
        + GetMemberForPost(postID string, userID string, includeArchivedChannels bool) (*model.ChannelMember, error)
        + GetMemberLastViewedAt(ctx context.Context, channelID string, userID string) (int64, error)
        + GetMembers(channelID string, offset int, limit int) (model.ChannelMembers, error)
        + GetMembersByChannelIds(channelIds []string, userID string) (model.ChannelMembers, error)
        + GetMembersByIds(channelID string, userIds []string) (model.ChannelMembers, error)
        + GetMembersForUser(teamID string, userID string) (model.ChannelMembers, error)
        + GetMembersForUserWithPagination(userID string, page int, perPage int) (model.ChannelMembersWithTeamData, error)
        + GetMembersInfoByChannelIds(channelIDs []string) (<font color=blue>map</font>[string][]*model.User, error)
        + GetMoreChannels(teamID string, userID string, offset int, limit int) (model.ChannelList, error)
        + GetPinnedPostCount(channelID string, allowFromCache bool) (int64, error)
        + GetPinnedPosts(channelID string) (*model.PostList, error)
        + GetPrivateChannelsForTeam(teamID string, offset int, limit int) (model.ChannelList, error)
        + GetPublicChannelsByIdsForTeam(teamID string, channelIds []string) (model.ChannelList, error)
        + GetPublicChannelsForTeam(teamID string, offset int, limit int) (model.ChannelList, error)
        + GetSidebarCategories(userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, error)
        + GetSidebarCategoriesForTeamForUser(userID string, teamID string) (*model.OrderedSidebarCategories, error)
        + GetSidebarCategory(categoryID string) (*model.SidebarCategoryWithChannels, error)
        + GetSidebarCategoryOrder(userID string, teamID string) ([]string, error)
        + GetTeamChannels(teamID string) (model.ChannelList, error)
        + GetTeamForChannel(channelID string) (*model.Team, error)
        + GetTeamMembersForChannel(channelID string) ([]string, error)
        + GroupSyncedChannelCount() (int64, error)
        + IncrementMentionCount(channelID string, userIDs []string, isRoot bool, isUrgent bool) error
        + InvalidateAllChannelMembersForUser(userID string) 
        + InvalidateCacheForChannelMembersNotifyProps(channelID string) 
        + InvalidateChannel(id string) 
        + InvalidateChannelByName(teamID string, name string) 
        + InvalidateGuestCount(channelID string) 
        + InvalidateMemberCount(channelID string) 
        + InvalidatePinnedPostCount(channelID string) 
        + MigrateChannelMembers(fromChannelID string, fromUserID string) (<font color=blue>map</font>[string]string, error)
        + PatchMultipleMembersNotifyProps(members []*model.ChannelMemberIdentifier, notifyProps <font color=blue>map</font>[string]string) ([]*model.ChannelMember, error)
        + PermanentDelete(ctx request.CTX, channelID string) error
        + PermanentDeleteByTeam(teamID string) error
        + PermanentDeleteMembersByChannel(ctx request.CTX, channelID string) error
        + PermanentDeleteMembersByUser(ctx request.CTX, userID string) error
        + RemoveAllDeactivatedMembers(ctx request.CTX, channelID string) error
        + RemoveMember(ctx request.CTX, channelID string, userID string) error
        + RemoveMembers(ctx request.CTX, channelID string, userIds []string) error
        + ResetAllChannelSchemes() error
        + Restore(channelID string, timestamp int64) error
        + Save(rctx request.CTX, channel *model.Channel, maxChannelsPerTeam int64) (*model.Channel, error)
        + SaveDirectChannel(ctx request.CTX, channel *model.Channel, member1 *model.ChannelMember, member2 *model.ChannelMember) (*model.Channel, error)
        + SaveMember(rctx request.CTX, member *model.ChannelMember) (*model.ChannelMember, error)
        + SaveMultipleMembers(members []*model.ChannelMember) ([]*model.ChannelMember, error)
        + SearchAllChannels(term string, opts store.ChannelSearchOpts) (model.ChannelListWithTeamData, int64, error)
        + SearchArchivedInTeam(teamID string, term string, userID string) (model.ChannelList, error)
        + SearchForUserInTeam(userID string, teamID string, term string, includeDeleted bool) (model.ChannelList, error)
        + SearchGroupChannels(userID string, term string) (model.ChannelList, error)
        + SearchInTeam(teamID string, term string, includeDeleted bool) (model.ChannelList, error)
        + SearchMore(userID string, teamID string, term string) (model.ChannelList, error)
        + SetDeleteAt(channelID string, deleteAt int64, updateAt int64) error
        + SetShared(channelId string, shared bool) error
        + Update(ctx request.CTX, channel *model.Channel) (*model.Channel, error)
        + UpdateLastViewedAt(channelIds []string, userID string) (<font color=blue>map</font>[string]int64, error)
        + UpdateLastViewedAtPost(unreadPost *model.Post, userID string, mentionCount int, mentionCountRoot int, urgentMentionCount int, setUnreadCountRoot bool) (*model.ChannelUnreadAt, error)
        + UpdateMember(ctx request.CTX, member *model.ChannelMember) (*model.ChannelMember, error)
        + UpdateMemberNotifyProps(channelID string, userID string, props <font color=blue>map</font>[string]string) (*model.ChannelMember, error)
        + UpdateMembersRole(channelID string, userIDs []string) error
        + UpdateMultipleMembers(members []*model.ChannelMember) ([]*model.ChannelMember, error)
        + UpdateSidebarCategories(userID string, teamID string, categories []*model.SidebarCategoryWithChannels) ([]*model.SidebarCategoryWithChannels, []*model.SidebarCategoryWithChannels, error)
        + UpdateSidebarCategoryOrder(userID string, teamID string, categoryOrder []string) error
        + UpdateSidebarChannelCategoryOnMove(channel *model.Channel, newTeamID string) error
        + UpdateSidebarChannelsByPreferences(preferences model.Preferences) error
        + UserBelongsToChannels(userID string, channelIds []string) (bool, error)

    }
    class OpenTracingLayerClusterDiscoveryStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Cleanup() error
        + Delete(discovery *model.ClusterDiscovery) (bool, error)
        + Exists(discovery *model.ClusterDiscovery) (bool, error)
        + GetAll(discoveryType string, clusterName string) ([]*model.ClusterDiscovery, error)
        + Save(discovery *model.ClusterDiscovery) error
        + SetLastPingAt(discovery *model.ClusterDiscovery) error

    }
    class OpenTracingLayerCommandStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + AnalyticsCommandCount(teamID string) (int64, error)
        + Delete(commandID string, timestamp int64) error
        + Get(id string) (*model.Command, error)
        + GetByTeam(teamID string) ([]*model.Command, error)
        + GetByTrigger(teamID string, trigger string) (*model.Command, error)
        + PermanentDeleteByTeam(teamID string) error
        + PermanentDeleteByUser(userID string) error
        + Save(webhook *model.Command) (*model.Command, error)
        + Update(hook *model.Command) (*model.Command, error)

    }
    class OpenTracingLayerCommandWebhookStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Cleanup() 
        + Get(id string) (*model.CommandWebhook, error)
        + Save(webhook *model.CommandWebhook) (*model.CommandWebhook, error)
        + TryUse(id string, limit int) error

    }
    class OpenTracingLayerComplianceStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + ComplianceExport(compliance *model.Compliance, cursor model.ComplianceExportCursor, limit int) ([]*model.CompliancePost, model.ComplianceExportCursor, error)
        + Get(id string) (*model.Compliance, error)
        + GetAll(offset int, limit int) (model.Compliances, error)
        + MessageExport(c request.CTX, cursor model.MessageExportCursor, limit int) ([]*model.MessageExport, model.MessageExportCursor, error)
        + Save(compliance *model.Compliance) (*model.Compliance, error)
        + Update(compliance *model.Compliance) (*model.Compliance, error)

    }
    class OpenTracingLayerDesktopTokensStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Delete(token string) error
        + DeleteByUserId(userId string) error
        + DeleteOlderThan(minCreatedAt int64) error
        + GetUserId(token string, minCreatedAt int64) (*string, error)
        + Insert(token string, createAt int64, userId string) error

    }
    class OpenTracingLayerDraftStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Delete(userID string, channelID string, rootID string) error
        + DeleteDraftsAssociatedWithPost(channelID string, rootID string) error
        + DeleteEmptyDraftsByCreateAtAndUserId(createAt int64, userId string) error
        + DeleteOrphanDraftsByCreateAtAndUserId(createAt int64, userId string) error
        + Get(userID string, channelID string, rootID string, includeDeleted bool) (*model.Draft, error)
        + GetDraftsForUser(userID string, teamID string) ([]*model.Draft, error)
        + GetLastCreateAtAndUserIdValuesForEmptyDraftsMigration(createAt int64, userId string) (int64, string, error)
        + Upsert(d *model.Draft) (*model.Draft, error)

    }
    class OpenTracingLayerEmojiStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Delete(emoji *model.Emoji, timestamp int64) error
        + Get(c request.CTX, id string, allowFromCache bool) (*model.Emoji, error)
        + GetByName(c request.CTX, name string, allowFromCache bool) (*model.Emoji, error)
        + GetList(offset int, limit int, sort string) ([]*model.Emoji, error)
        + GetMultipleByName(c request.CTX, names []string) ([]*model.Emoji, error)
        + Save(emoji *model.Emoji) (*model.Emoji, error)
        + Search(name string, prefixOnly bool, limit int) ([]*model.Emoji, error)

    }
    class OpenTracingLayerFileInfoStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + AttachToPost(c request.CTX, fileID string, postID string, channelID string, creatorID string) error
        + ClearCaches() 
        + CountAll() (int64, error)
        + DeleteForPost(c request.CTX, postID string) (string, error)
        + Get(id string) (*model.FileInfo, error)
        + GetByIds(ids []string) ([]*model.FileInfo, error)
        + GetByPath(path string) (*model.FileInfo, error)
        + GetFilesBatchForIndexing(startTime int64, startFileID string, includeDeleted bool, limit int) ([]*model.FileForIndexing, error)
        + GetForPost(postID string, readFromMaster bool, includeDeleted bool, allowFromCache bool) ([]*model.FileInfo, error)
        + GetForUser(userID string) ([]*model.FileInfo, error)
        + GetFromMaster(id string) (*model.FileInfo, error)
        + GetStorageUsage(allowFromCache bool, includeDeleted bool) (int64, error)
        + GetUptoNSizeFileTime(n int64) (int64, error)
        + GetWithOptions(page int, perPage int, opt *model.GetFileInfosOptions) ([]*model.FileInfo, error)
        + InvalidateFileInfosForPostCache(postID string, deleted bool) 
        + PermanentDelete(c request.CTX, fileID string) error
        + PermanentDeleteBatch(ctx request.CTX, endTime int64, limit int64) (int64, error)
        + PermanentDeleteByUser(ctx request.CTX, userID string) (int64, error)
        + Save(ctx request.CTX, info *model.FileInfo) (*model.FileInfo, error)
        + Search(ctx request.CTX, paramsList []*model.SearchParams, userID string, teamID string, page int, perPage int) (*model.FileInfoList, error)
        + SetContent(ctx request.CTX, fileID string, content string) error
        + Upsert(rctx request.CTX, info *model.FileInfo) (*model.FileInfo, error)

    }
    class OpenTracingLayerGroupStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + AdminRoleGroupsForSyncableMember(userID string, syncableID string, syncableType model.GroupSyncableType) ([]string, error)
        + ChannelMembersMinusGroupMembers(channelID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, error)
        + ChannelMembersToAdd(since int64, channelID *string, includeRemovedMembers bool) ([]*model.UserChannelIDPair, error)
        + ChannelMembersToRemove(channelID *string) ([]*model.ChannelMember, error)
        + CountChannelMembersMinusGroupMembers(channelID string, groupIDs []string) (int64, error)
        + CountGroupsByChannel(channelID string, opts model.GroupSearchOpts) (int64, error)
        + CountGroupsByTeam(teamID string, opts model.GroupSearchOpts) (int64, error)
        + CountTeamMembersMinusGroupMembers(teamID string, groupIDs []string) (int64, error)
        + Create(group *model.Group) (*model.Group, error)
        + CreateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, error)
        + CreateWithUserIds(group *model.GroupWithUserIds) (*model.Group, error)
        + Delete(groupID string) (*model.Group, error)
        + DeleteGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, error)
        + DeleteMember(groupID string, userID string) (*model.GroupMember, error)
        + DeleteMembers(groupID string, userIDs []string) ([]*model.GroupMember, error)
        + DistinctGroupMemberCount() (int64, error)
        + DistinctGroupMemberCountForSource(source model.GroupSource) (int64, error)
        + Get(groupID string) (*model.Group, error)
        + GetAllBySource(groupSource model.GroupSource) ([]*model.Group, error)
        + GetAllGroupSyncablesByGroupId(groupID string, syncableType model.GroupSyncableType) ([]*model.GroupSyncable, error)
        + GetByIDs(groupIDs []string) ([]*model.Group, error)
        + GetByName(name string, opts model.GroupSearchOpts) (*model.Group, error)
        + GetByRemoteID(remoteID string, groupSource model.GroupSource) (*model.Group, error)
        + GetByUser(userID string) ([]*model.Group, error)
        + GetGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, error)
        + GetGroups(page int, perPage int, opts model.GroupSearchOpts, viewRestrictions *model.ViewUsersRestrictions) ([]*model.Group, error)
        + GetGroupsAssociatedToChannelsByTeam(teamID string, opts model.GroupSearchOpts) (<font color=blue>map</font>[string][]*model.GroupWithSchemeAdmin, error)
        + GetGroupsByChannel(channelID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, error)
        + GetGroupsByTeam(teamID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, error)
        + GetMember(groupID string, userID string) (*model.GroupMember, error)
        + GetMemberCount(groupID string) (int64, error)
        + GetMemberCountWithRestrictions(groupID string, viewRestrictions *model.ViewUsersRestrictions) (int64, error)
        + GetMemberUsers(groupID string) ([]*model.User, error)
        + GetMemberUsersInTeam(groupID string, teamID string) ([]*model.User, error)
        + GetMemberUsersNotInChannel(groupID string, channelID string) ([]*model.User, error)
        + GetMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetMemberUsersSortedPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions, teammateNameDisplay string) ([]*model.User, error)
        + GetNonMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GroupChannelCount() (int64, error)
        + GroupCount() (int64, error)
        + GroupCountBySource(source model.GroupSource) (int64, error)
        + GroupCountWithAllowReference() (int64, error)
        + GroupMemberCount() (int64, error)
        + GroupTeamCount() (int64, error)
        + PermanentDeleteMembersByUser(userID string) error
        + PermittedSyncableAdmins(syncableID string, syncableType model.GroupSyncableType) ([]string, error)
        + Restore(groupID string) (*model.Group, error)
        + TeamMembersMinusGroupMembers(teamID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, error)
        + TeamMembersToAdd(since int64, teamID *string, includeRemovedMembers bool) ([]*model.UserTeamIDPair, error)
        + TeamMembersToRemove(teamID *string) ([]*model.TeamMember, error)
        + Update(group *model.Group) (*model.Group, error)
        + UpdateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, error)
        + UpsertMember(groupID string, userID string) (*model.GroupMember, error)
        + UpsertMembers(groupID string, userIDs []string) ([]*model.GroupMember, error)

    }
    class OpenTracingLayerJobStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Cleanup(expiryTime int64, batchSize int) error
        + Delete(id string) (string, error)
        + Get(c request.CTX, id string) (*model.Job, error)
        + GetAllByStatus(c request.CTX, status string) ([]*model.Job, error)
        + GetAllByType(c request.CTX, jobType string) ([]*model.Job, error)
        + GetAllByTypeAndStatus(c request.CTX, jobType string, status string) ([]*model.Job, error)
        + GetAllByTypePage(c request.CTX, jobType string, offset int, limit int) ([]*model.Job, error)
        + GetAllByTypesPage(c request.CTX, jobTypes []string, offset int, limit int) ([]*model.Job, error)
        + GetCountByStatusAndType(status string, jobType string) (int64, error)
        + GetNewestJobByStatusAndType(status string, jobType string) (*model.Job, error)
        + GetNewestJobByStatusesAndType(statuses []string, jobType string) (*model.Job, error)
        + Save(job *model.Job) (*model.Job, error)
        + SaveOnce(job *model.Job) (*model.Job, error)
        + UpdateOptimistically(job *model.Job, currentStatus string) (bool, error)
        + UpdateStatus(id string, status string) (*model.Job, error)
        + UpdateStatusOptimistically(id string, currentStatus string, newStatus string) (bool, error)

    }
    class OpenTracingLayerLicenseStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Get(c request.CTX, id string) (*model.LicenseRecord, error)
        + GetAll() ([]*model.LicenseRecord, error)
        + Save(license *model.LicenseRecord) error

    }
    class OpenTracingLayerLinkMetadataStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Get(url string, timestamp int64) (*model.LinkMetadata, error)
        + Save(linkMetadata *model.LinkMetadata) (*model.LinkMetadata, error)

    }
    class OpenTracingLayerNotifyAdminStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + DeleteBefore(trial bool, now int64) error
        + Get(trial bool) ([]*model.NotifyAdminData, error)
        + GetDataByUserIdAndFeature(userId string, feature model.MattermostFeature) ([]*model.NotifyAdminData, error)
        + Save(data *model.NotifyAdminData) (*model.NotifyAdminData, error)
        + Update(userId string, requiredPlan string, requiredFeature model.MattermostFeature, now int64) error

    }
    class OpenTracingLayerOAuthStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + DeleteApp(id string) error
        + GetAccessData(token string) (*model.AccessData, error)
        + GetAccessDataByRefreshToken(token string) (*model.AccessData, error)
        + GetAccessDataByUserForApp(userID string, clientId string) ([]*model.AccessData, error)
        + GetApp(id string) (*model.OAuthApp, error)
        + GetAppByUser(userID string, offset int, limit int) ([]*model.OAuthApp, error)
        + GetApps(offset int, limit int) ([]*model.OAuthApp, error)
        + GetAuthData(code string) (*model.AuthData, error)
        + GetAuthorizedApps(userID string, offset int, limit int) ([]*model.OAuthApp, error)
        + GetPreviousAccessData(userID string, clientId string) (*model.AccessData, error)
        + PermanentDeleteAuthDataByUser(userID string) error
        + RemoveAccessData(token string) error
        + RemoveAllAccessData() error
        + RemoveAuthData(code string) error
        + RemoveAuthDataByClientId(clientId string, userId string) error
        + RemoveAuthDataByUserId(userId string) error
        + SaveAccessData(accessData *model.AccessData) (*model.AccessData, error)
        + SaveApp(app *model.OAuthApp) (*model.OAuthApp, error)
        + SaveAuthData(authData *model.AuthData) (*model.AuthData, error)
        + UpdateAccessData(accessData *model.AccessData) (*model.AccessData, error)
        + UpdateApp(app *model.OAuthApp) (*model.OAuthApp, error)

    }
    class OpenTracingLayerOutgoingOAuthConnectionStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + DeleteConnection(c request.CTX, id string) error
        + GetConnection(c request.CTX, id string) (*model.OutgoingOAuthConnection, error)
        + GetConnections(c request.CTX, filters model.OutgoingOAuthConnectionGetConnectionsFilter) ([]*model.OutgoingOAuthConnection, error)
        + SaveConnection(c request.CTX, conn *model.OutgoingOAuthConnection) (*model.OutgoingOAuthConnection, error)
        + UpdateConnection(c request.CTX, conn *model.OutgoingOAuthConnection) (*model.OutgoingOAuthConnection, error)

    }
    class OpenTracingLayerPluginStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + CompareAndDelete(keyVal *model.PluginKeyValue, oldValue []byte) (bool, error)
        + CompareAndSet(keyVal *model.PluginKeyValue, oldValue []byte) (bool, error)
        + Delete(pluginID string, key string) error
        + DeleteAllExpired() error
        + DeleteAllForPlugin(PluginID string) error
        + Get(pluginID string, key string) (*model.PluginKeyValue, error)
        + List(pluginID string, page int, perPage int) ([]string, error)
        + SaveOrUpdate(keyVal *model.PluginKeyValue) (*model.PluginKeyValue, error)
        + SetWithOptions(pluginID string, key string, value []byte, options model.PluginKVSetOptions) (bool, error)

    }
    class OpenTracingLayerPostAcknowledgementStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Delete(acknowledgement *model.PostAcknowledgement) error
        + Get(postID string, userID string) (*model.PostAcknowledgement, error)
        + GetForPost(postID string) ([]*model.PostAcknowledgement, error)
        + GetForPosts(postIds []string) ([]*model.PostAcknowledgement, error)
        + Save(postID string, userID string, acknowledgedAt int64) (*model.PostAcknowledgement, error)

    }
    class OpenTracingLayerPostPersistentNotificationStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Delete(postIds []string) error
        + DeleteByChannel(channelIds []string) error
        + DeleteByTeam(teamIds []string) error
        + DeleteExpired(maxSentCount int16) error
        + Get(params model.GetPersistentNotificationsPostsParams) ([]*model.PostPersistentNotifications, error)
        + GetSingle(postID string) (*model.PostPersistentNotifications, error)
        + UpdateLastActivity(postIds []string) error

    }
    class OpenTracingLayerPostPriorityStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + GetForPost(postId string) (*model.PostPriority, error)
        + GetForPosts(ids []string) ([]*model.PostPriority, error)

    }
    class OpenTracingLayerPostStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + AnalyticsPostCount(options *model.PostCountOptions) (int64, error)
        + AnalyticsPostCountsByDay(options *model.AnalyticsPostCountsOptions) (model.AnalyticsRows, error)
        + AnalyticsUserCountsWithPostsByDay(teamID string) (model.AnalyticsRows, error)
        + ClearCaches() 
        + Delete(rctx request.CTX, postID string, timestamp int64, deleteByID string) error
        + Get(ctx context.Context, id string, opts model.GetPostsOptions, userID string, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetDirectPostParentsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.DirectPostForExport, error)
        + GetEditHistoryForPost(postId string) ([]*model.Post, error)
        + GetEtag(channelID string, allowFromCache bool, collapsedThreads bool) string
        + GetFlaggedPosts(userID string, offset int, limit int) (*model.PostList, error)
        + GetFlaggedPostsForChannel(userID string, channelID string, offset int, limit int) (*model.PostList, error)
        + GetFlaggedPostsForTeam(userID string, teamID string, offset int, limit int) (*model.PostList, error)
        + GetMaxPostSize() int
        + GetNthRecentPostTime(n int64) (int64, error)
        + GetOldest() (*model.Post, error)
        + GetOldestEntityCreationTime() (int64, error)
        + GetParentsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.PostForExport, error)
        + GetPostAfterTime(channelID string, timestamp int64, collapsedThreads bool) (*model.Post, error)
        + GetPostIdAfterTime(channelID string, timestamp int64, collapsedThreads bool) (string, error)
        + GetPostIdBeforeTime(channelID string, timestamp int64, collapsedThreads bool) (string, error)
        + GetPostReminderMetadata(postID string) (*store.PostReminderMetadata, error)
        + GetPostReminders(now int64) ([]*model.PostReminder, error)
        + GetPosts(options model.GetPostsOptions, allowFromCache bool, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsAfter(options model.GetPostsOptions, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsBatchForIndexing(startTime int64, startPostID string, limit int) ([]*model.PostForIndexing, error)
        + GetPostsBefore(options model.GetPostsOptions, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsByIds(postIds []string) ([]*model.Post, error)
        + GetPostsByThread(threadID string, since int64) ([]*model.Post, error)
        + GetPostsCreatedAt(channelID string, timestamp int64) ([]*model.Post, error)
        + GetPostsSince(options model.GetPostsSinceOptions, allowFromCache bool, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsSinceForSync(options model.GetPostsSinceForSyncOptions, cursor model.GetPostsSinceForSyncCursor, limit int) ([]*model.Post, model.GetPostsSinceForSyncCursor, error)
        + GetRepliesForExport(parentID string) ([]*model.ReplyForExport, error)
        + GetSingle(id string, inclDeleted bool) (*model.Post, error)
        + HasAutoResponsePostByUserSince(options model.GetPostsSinceOptions, userId string) (bool, error)
        + InvalidateLastPostTimeCache(channelID string) 
        + Overwrite(rctx request.CTX, post *model.Post) (*model.Post, error)
        + OverwriteMultiple(posts []*model.Post) ([]*model.Post, int, error)
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + PermanentDeleteByChannel(rctx request.CTX, channelID string) error
        + PermanentDeleteByUser(rctx request.CTX, userID string) error
        + Save(rctx request.CTX, post *model.Post) (*model.Post, error)
        + SaveMultiple(posts []*model.Post) ([]*model.Post, int, error)
        + Search(teamID string, userID string, params *model.SearchParams) (*model.PostList, error)
        + SearchPostsForUser(rctx request.CTX, paramsList []*model.SearchParams, userID string, teamID string, page int, perPage int) (*model.PostSearchResults, error)
        + SetPostReminder(reminder *model.PostReminder) error
        + Update(rctx request.CTX, newPost *model.Post, oldPost *model.Post) (*model.Post, error)

    }
    class OpenTracingLayerPreferenceStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + CleanupFlagsBatch(limit int64) (int64, error)
        + Delete(userID string, category string, name string) error
        + DeleteCategory(userID string, category string) error
        + DeleteCategoryAndName(category string, name string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + Get(userID string, category string, name string) (*model.Preference, error)
        + GetAll(userID string) (model.Preferences, error)
        + GetCategory(userID string, category string) (model.Preferences, error)
        + GetCategoryAndName(category string, nane string) (model.Preferences, error)
        + PermanentDeleteByUser(userID string) error
        + Save(preferences model.Preferences) error

    }
    class OpenTracingLayerProductNoticesStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Clear(notices []string) error
        + ClearOldNotices(currentNotices model.ProductNotices) error
        + GetViews(userID string) ([]model.ProductNoticeViewState, error)
        + View(userID string, notices []string) error

    }
    class OpenTracingLayerReactionStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + BulkGetForPosts(postIds []string) ([]*model.Reaction, error)
        + Delete(reaction *model.Reaction) (*model.Reaction, error)
        + DeleteAllWithEmojiName(emojiName string) error
        + DeleteOrphanedRowsByIds(r *model.RetentionIdsForDeletion) error
        + ExistsOnPost(postId string, emojiName string) (bool, error)
        + GetForPost(postID string, allowFromCache bool) ([]*model.Reaction, error)
        + GetForPostSince(postId string, since int64, excludeRemoteId string, inclDeleted bool) ([]*model.Reaction, error)
        + GetUniqueCountForPost(postId string) (int, error)
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + PermanentDeleteByUser(userID string) error
        + Save(reaction *model.Reaction) (*model.Reaction, error)

    }
    class OpenTracingLayerRemoteClusterStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Delete(remoteClusterId string) (bool, error)
        + Get(remoteClusterId string) (*model.RemoteCluster, error)
        + GetAll(filter model.RemoteClusterQueryFilter) ([]*model.RemoteCluster, error)
        + GetByPluginID(pluginID string) (*model.RemoteCluster, error)
        + Save(rc *model.RemoteCluster) (*model.RemoteCluster, error)
        + SetLastPingAt(remoteClusterId string) error
        + Update(rc *model.RemoteCluster) (*model.RemoteCluster, error)
        + UpdateTopics(remoteClusterId string, topics string) (*model.RemoteCluster, error)

    }
    class OpenTracingLayerRetentionPolicyStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + AddChannels(policyId string, channelIds []string) error
        + AddTeams(policyId string, teamIds []string) error
        + Delete(id string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + Get(id string) (*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + GetAll(offset int, limit int) ([]*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + GetChannelPoliciesCountForUser(userID string) (int64, error)
        + GetChannelPoliciesForUser(userID string, offset int, limit int) ([]*model.RetentionPolicyForChannel, error)
        + GetChannels(policyId string, offset int, limit int) (model.ChannelListWithTeamData, error)
        + GetChannelsCount(policyId string) (int64, error)
        + GetCount() (int64, error)
        + GetIdsForDeletionByTableName(tableName string, limit int) ([]*model.RetentionIdsForDeletion, error)
        + GetTeamPoliciesCountForUser(userID string) (int64, error)
        + GetTeamPoliciesForUser(userID string, offset int, limit int) ([]*model.RetentionPolicyForTeam, error)
        + GetTeams(policyId string, offset int, limit int) ([]*model.Team, error)
        + GetTeamsCount(policyId string) (int64, error)
        + Patch(patch *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + RemoveChannels(policyId string, channelIds []string) error
        + RemoveTeams(policyId string, teamIds []string) error
        + Save(policy *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, error)

    }
    class OpenTracingLayerRoleStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + AllChannelSchemeRoles() ([]*model.Role, error)
        + ChannelHigherScopedPermissions(roleNames []string) (<font color=blue>map</font>[string]*model.RolePermissions, error)
        + ChannelRolesUnderTeamRole(roleName string) ([]*model.Role, error)
        + Delete(roleID string) (*model.Role, error)
        + Get(roleID string) (*model.Role, error)
        + GetAll() ([]*model.Role, error)
        + GetByName(ctx context.Context, name string) (*model.Role, error)
        + GetByNames(names []string) ([]*model.Role, error)
        + PermanentDeleteAll() error
        + Save(role *model.Role) (*model.Role, error)

    }
    class OpenTracingLayerSchemeStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + CountByScope(scope string) (int64, error)
        + CountWithoutPermission(scope string, permissionID string, roleScope model.RoleScope, roleType model.RoleType) (int64, error)
        + Delete(schemeID string) (*model.Scheme, error)
        + Get(schemeID string) (*model.Scheme, error)
        + GetAllPage(scope string, offset int, limit int) ([]*model.Scheme, error)
        + GetByName(schemeName string) (*model.Scheme, error)
        + PermanentDeleteAll() error
        + Save(scheme *model.Scheme) (*model.Scheme, error)

    }
    class OpenTracingLayerSessionStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + AnalyticsSessionCount() (int64, error)
        + Cleanup(expiryTime int64, batchSize int64) error
        + Get(c request.CTX, sessionIDOrToken string) (*model.Session, error)
        + GetSessions(c request.CTX, userID string) ([]*model.Session, error)
        + GetSessionsExpired(thresholdMillis int64, mobileOnly bool, unnotifiedOnly bool) ([]*model.Session, error)
        + GetSessionsWithActiveDeviceIds(userID string) ([]*model.Session, error)
        + PermanentDeleteSessionsByUser(teamID string) error
        + Remove(sessionIDOrToken string) error
        + RemoveAllSessions() error
        + Save(c request.CTX, session *model.Session) (*model.Session, error)
        + UpdateDeviceId(id string, deviceID string, expiresAt int64) (string, error)
        + UpdateExpiredNotify(sessionid string, notified bool) error
        + UpdateExpiresAt(sessionID string, timestamp int64) error
        + UpdateLastActivityAt(sessionID string, timestamp int64) error
        + UpdateProps(session *model.Session) error
        + UpdateRoles(userID string, roles string) (string, error)

    }
    class OpenTracingLayerSharedChannelStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Delete(channelId string) (bool, error)
        + DeleteRemote(remoteId string) (bool, error)
        + Get(channelId string) (*model.SharedChannel, error)
        + GetAll(offset int, limit int, opts model.SharedChannelFilterOpts) ([]*model.SharedChannel, error)
        + GetAllCount(opts model.SharedChannelFilterOpts) (int64, error)
        + GetAttachment(fileId string, remoteId string) (*model.SharedChannelAttachment, error)
        + GetRemote(id string) (*model.SharedChannelRemote, error)
        + GetRemoteByIds(channelId string, remoteId string) (*model.SharedChannelRemote, error)
        + GetRemoteForUser(remoteId string, userId string) (*model.RemoteCluster, error)
        + GetRemotes(opts model.SharedChannelRemoteFilterOpts) ([]*model.SharedChannelRemote, error)
        + GetRemotesStatus(channelId string) ([]*model.SharedChannelRemoteStatus, error)
        + GetSingleUser(userID string, channelID string, remoteID string) (*model.SharedChannelUser, error)
        + GetUsersForSync(filter model.GetUsersForSyncFilter) ([]*model.User, error)
        + GetUsersForUser(userID string) ([]*model.SharedChannelUser, error)
        + HasChannel(channelID string) (bool, error)
        + HasRemote(channelID string, remoteId string) (bool, error)
        + Save(sc *model.SharedChannel) (*model.SharedChannel, error)
        + SaveAttachment(remote *model.SharedChannelAttachment) (*model.SharedChannelAttachment, error)
        + SaveRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + SaveUser(remote *model.SharedChannelUser) (*model.SharedChannelUser, error)
        + Update(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UpdateAttachmentLastSyncAt(id string, syncTime int64) error
        + UpdateRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + UpdateRemoteCursor(id string, cursor model.GetPostsSinceForSyncCursor) error
        + UpdateUserLastSyncAt(userID string, channelID string, remoteID string) error
        + UpsertAttachment(remote *model.SharedChannelAttachment) (string, error)

    }
    class OpenTracingLayerStatusStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Get(userID string) (*model.Status, error)
        + GetByIds(userIds []string) ([]*model.Status, error)
        + GetTotalActiveUsersCount() (int64, error)
        + ResetAll() error
        + SaveOrUpdate(status *model.Status) error
        + UpdateExpiredDNDStatuses() ([]*model.Status, error)
        + UpdateLastActivityAt(userID string, lastActivityAt int64) error

    }
    class OpenTracingLayerSystemStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Get() (model.StringMap, error)
        + GetByName(name string) (*model.System, error)
        + InsertIfExists(system *model.System) (*model.System, error)
        + PermanentDeleteByName(name string) (*model.System, error)
        + Save(system *model.System) error
        + SaveOrUpdate(system *model.System) error
        + Update(system *model.System) error

    }
    class OpenTracingLayerTeamStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + AnalyticsGetTeamCountForScheme(schemeID string) (int64, error)
        + AnalyticsTeamCount(opts *model.TeamSearch) (int64, error)
        + ClearAllCustomRoleAssignments() error
        + ClearCaches() 
        + Get(id string) (*model.Team, error)
        + GetActiveMemberCount(teamID string, restrictions *model.ViewUsersRestrictions) (int64, error)
        + GetAll() ([]*model.Team, error)
        + GetAllForExportAfter(limit int, afterID string) ([]*model.TeamForExport, error)
        + GetAllPage(offset int, limit int, opts *model.TeamSearch) ([]*model.Team, error)
        + GetAllPrivateTeamListing() ([]*model.Team, error)
        + GetAllTeamListing() ([]*model.Team, error)
        + GetByEmptyInviteID() ([]*model.Team, error)
        + GetByInviteId(inviteID string) (*model.Team, error)
        + GetByName(name string) (*model.Team, error)
        + GetByNames(name []string) ([]*model.Team, error)
        + GetChannelUnreadsForAllTeams(excludeTeamID string, userID string) ([]*model.ChannelUnread, error)
        + GetChannelUnreadsForTeam(teamID string, userID string) ([]*model.ChannelUnread, error)
        + GetCommonTeamIDsForMultipleUsers(userIDs []string) ([]string, error)
        + GetCommonTeamIDsForTwoUsers(userID string, otherUserID string) ([]string, error)
        + GetMany(ids []string) ([]*model.Team, error)
        + GetMember(c request.CTX, teamID string, userID string) (*model.TeamMember, error)
        + GetMembers(teamID string, offset int, limit int, teamMembersGetOptions *model.TeamMembersGetOptions) ([]*model.TeamMember, error)
        + GetMembersByIds(teamID string, userIds []string, restrictions *model.ViewUsersRestrictions) ([]*model.TeamMember, error)
        + GetTeamMembersForExport(userID string) ([]*model.TeamMemberForExport, error)
        + GetTeamsByScheme(schemeID string, offset int, limit int) ([]*model.Team, error)
        + GetTeamsByUserId(userID string) ([]*model.Team, error)
        + GetTeamsForUser(c request.CTX, userID string, excludeTeamID string, includeDeleted bool) ([]*model.TeamMember, error)
        + GetTeamsForUserWithPagination(userID string, page int, perPage int) ([]*model.TeamMember, error)
        + GetTotalMemberCount(teamID string, restrictions *model.ViewUsersRestrictions) (int64, error)
        + GetUserTeamIds(userID string, allowFromCache bool) ([]string, error)
        + GroupSyncedTeamCount() (int64, error)
        + InvalidateAllTeamIdsForUser(userID string) 
        + MigrateTeamMembers(fromTeamID string, fromUserID string) (<font color=blue>map</font>[string]string, error)
        + PermanentDelete(teamID string) error
        + RemoveAllMembersByTeam(teamID string) error
        + RemoveAllMembersByUser(ctx request.CTX, userID string) error
        + RemoveMember(rctx request.CTX, teamID string, userID string) error
        + RemoveMembers(rctx request.CTX, teamID string, userIds []string) error
        + ResetAllTeamSchemes() error
        + Save(team *model.Team) (*model.Team, error)
        + SaveMember(rctx request.CTX, member *model.TeamMember, maxUsersPerTeam int) (*model.TeamMember, error)
        + SaveMultipleMembers(members []*model.TeamMember, maxUsersPerTeam int) ([]*model.TeamMember, error)
        + SearchAll(opts *model.TeamSearch) ([]*model.Team, error)
        + SearchAllPaged(opts *model.TeamSearch) ([]*model.Team, int64, error)
        + SearchOpen(opts *model.TeamSearch) ([]*model.Team, error)
        + SearchPrivate(opts *model.TeamSearch) ([]*model.Team, error)
        + Update(team *model.Team) (*model.Team, error)
        + UpdateLastTeamIconUpdate(teamID string, curTime int64) error
        + UpdateMember(rctx request.CTX, member *model.TeamMember) (*model.TeamMember, error)
        + UpdateMembersRole(teamID string, userIDs []string) error
        + UpdateMultipleMembers(members []*model.TeamMember) ([]*model.TeamMember, error)
        + UserBelongsToTeams(userID string, teamIds []string) (bool, error)

    }
    class OpenTracingLayerTermsOfServiceStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Get(id string, allowFromCache bool) (*model.TermsOfService, error)
        + GetLatest(allowFromCache bool) (*model.TermsOfService, error)
        + Save(termsOfService *model.TermsOfService) (*model.TermsOfService, error)

    }
    class OpenTracingLayerThreadStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + DeleteMembershipForUser(userId string, postID string) error
        + DeleteMembershipsForChannel(userID string, channelID string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + Get(id string) (*model.Thread, error)
        + GetMembershipForUser(userId string, postID string) (*model.ThreadMembership, error)
        + GetMembershipsForUser(userId string, teamID string) ([]*model.ThreadMembership, error)
        + GetTeamsUnreadForUser(userID string, teamIDs []string, includeUrgentMentionCount bool) (<font color=blue>map</font>[string]*model.TeamUnread, error)
        + GetThreadFollowers(threadID string, fetchOnlyActive bool) ([]string, error)
        + GetThreadForUser(threadMembership *model.ThreadMembership, extended bool, postPriorityIsEnabled bool) (*model.ThreadResponse, error)
        + GetThreadUnreadReplyCount(threadMembership *model.ThreadMembership) (int64, error)
        + GetThreadsForUser(userId string, teamID string, opts model.GetUserThreadsOpts) ([]*model.ThreadResponse, error)
        + GetTotalThreads(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadMentions(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadThreads(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadUrgentMentions(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + MaintainMembership(userID string, postID string, opts store.ThreadMembershipOpts) (*model.ThreadMembership, error)
        + MarkAllAsRead(userID string, threadIds []string) error
        + MarkAllAsReadByChannels(userID string, channelIDs []string) error
        + MarkAllAsReadByTeam(userID string, teamID string) error
        + MarkAsRead(userID string, threadID string, timestamp int64) error
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + PermanentDeleteBatchThreadMembershipsForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + UpdateMembership(membership *model.ThreadMembership) (*model.ThreadMembership, error)

    }
    class OpenTracingLayerTokenStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Cleanup(expiryTime int64) 
        + Delete(token string) error
        + GetAllTokensByType(tokenType string) ([]*model.Token, error)
        + GetByToken(token string) (*model.Token, error)
        + RemoveAllTokensByType(tokenType string) error
        + Save(recovery *model.Token) error

    }
    class OpenTracingLayerTrueUpReviewStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + CreateTrueUpReviewStatusRecord(reviewStatus *model.TrueUpReviewStatus) (*model.TrueUpReviewStatus, error)
        + GetTrueUpReviewStatus(dueDate int64) (*model.TrueUpReviewStatus, error)
        + Update(reviewStatus *model.TrueUpReviewStatus) (*model.TrueUpReviewStatus, error)

    }
    class OpenTracingLayerUploadSessionStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Delete(id string) error
        + Get(c request.CTX, id string) (*model.UploadSession, error)
        + GetForUser(userID string) ([]*model.UploadSession, error)
        + Save(session *model.UploadSession) (*model.UploadSession, error)
        + Update(session *model.UploadSession) error

    }
    class OpenTracingLayerUserAccessTokenStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Delete(tokenID string) error
        + DeleteAllForUser(userID string) error
        + Get(tokenID string) (*model.UserAccessToken, error)
        + GetAll(offset int, limit int) ([]*model.UserAccessToken, error)
        + GetByToken(tokenString string) (*model.UserAccessToken, error)
        + GetByUser(userID string, page int, perPage int) ([]*model.UserAccessToken, error)
        + Save(token *model.UserAccessToken) (*model.UserAccessToken, error)
        + Search(term string) ([]*model.UserAccessToken, error)
        + UpdateTokenDisable(tokenID string) error
        + UpdateTokenEnable(tokenID string) error

    }
    class OpenTracingLayerUserStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + AnalyticsActiveCount(timestamp int64, options model.UserCountOptions) (int64, error)
        + AnalyticsActiveCountForPeriod(startTime int64, endTime int64, options model.UserCountOptions) (int64, error)
        + AnalyticsGetExternalUsers(hostDomain string) (bool, error)
        + AnalyticsGetGuestCount() (int64, error)
        + AnalyticsGetInactiveUsersCount() (int64, error)
        + AnalyticsGetSystemAdminCount() (int64, error)
        + AutocompleteUsersInChannel(rctx request.CTX, teamID string, channelID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInChannel, error)
        + ClearAllCustomRoleAssignments() error
        + ClearCaches() 
        + Count(options model.UserCountOptions) (int64, error)
        + DeactivateGuests() ([]string, error)
        + DemoteUserToGuest(userID string) (*model.User, error)
        + Get(ctx context.Context, id string) (*model.User, error)
        + GetAll() ([]*model.User, error)
        + GetAllAfter(limit int, afterID string) ([]*model.User, error)
        + GetAllNotInAuthService(authServices []string) ([]*model.User, error)
        + GetAllProfiles(options *model.UserGetOptions) ([]*model.User, error)
        + GetAllProfilesInChannel(ctx context.Context, channelID string, allowFromCache bool) (<font color=blue>map</font>[string]*model.User, error)
        + GetAllUsingAuthService(authService string) ([]*model.User, error)
        + GetAnyUnreadPostCountForChannel(userID string, channelID string) (int64, error)
        + GetByAuth(authData *string, authService string) (*model.User, error)
        + GetByEmail(email string) (*model.User, error)
        + GetByRemoteID(remoteID string) (*model.User, error)
        + GetByUsername(username string) (*model.User, error)
        + GetChannelGroupUsers(channelID string) ([]*model.User, error)
        + GetEtagForAllProfiles() string
        + GetEtagForProfiles(teamID string) string
        + GetEtagForProfilesNotInTeam(teamID string) string
        + GetForLogin(loginID string, allowSignInWithUsername bool, allowSignInWithEmail bool) (*model.User, error)
        + GetKnownUsers(userID string) ([]string, error)
        + GetMany(ctx context.Context, ids []string) ([]*model.User, error)
        + GetNewUsersForTeam(teamID string, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfileByGroupChannelIdsForUser(userID string, channelIds []string) (<font color=blue>map</font>[string][]*model.User, error)
        + GetProfileByIds(ctx context.Context, userIds []string, options *store.UserGetByIdsOpts, allowFromCache bool) ([]*model.User, error)
        + GetProfiles(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesByUsernames(usernames []string, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfilesInChannel(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesInChannelByAdmin(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesInChannelByStatus(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesNotInChannel(teamID string, channelId string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfilesNotInTeam(teamID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfilesWithoutTeam(options *model.UserGetOptions) ([]*model.User, error)
        + GetRecentlyActiveUsersForTeam(teamID string, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetSystemAdminProfiles() (<font color=blue>map</font>[string]*model.User, error)
        + GetTeamGroupUsers(teamID string) ([]*model.User, error)
        + GetUnreadCount(userID string, isCRTEnabled bool) (int64, error)
        + GetUnreadCountForChannel(userID string, channelID string) (int64, error)
        + GetUserCountForReport(filter *model.UserReportOptions) (int64, error)
        + GetUserReport(filter *model.UserReportOptions) ([]*model.UserReportQuery, error)
        + GetUsersBatchForIndexing(startTime int64, startFileID string, limit int) ([]*model.UserForIndexing, error)
        + GetUsersWithInvalidEmails(page int, perPage int, restrictedDomains string) ([]*model.User, error)
        + InferSystemInstallDate() (int64, error)
        + InsertUsers(users []*model.User) error
        + InvalidateProfileCacheForUser(userID string) 
        + InvalidateProfilesInChannelCache(channelID string) 
        + InvalidateProfilesInChannelCacheByUser(userID string) 
        + IsEmpty(excludeBots bool) (bool, error)
        + PermanentDelete(userID string) error
        + PromoteGuestToUser(userID string) error
        + RefreshPostStatsForUsers() error
        + ResetAuthDataToEmailForUsers(service string, userIDs []string, includeDeleted bool, dryRun bool) (int, error)
        + ResetLastPictureUpdate(userID string) error
        + Save(rctx request.CTX, user *model.User) (*model.User, error)
        + Search(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchInChannel(channelID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInChannel(teamID string, channelID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInTeam(notInTeamID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchWithoutTeam(term string, options *model.UserSearchOptions) ([]*model.User, error)
        + Update(rctx request.CTX, user *model.User, allowRoleUpdate bool) (*model.UserUpdate, error)
        + UpdateAuthData(userID string, service string, authData *string, email string, resetMfa bool) (string, error)
        + UpdateFailedPasswordAttempts(userID string, attempts int) error
        + UpdateLastLogin(userID string, lastLogin int64) error
        + UpdateLastPictureUpdate(userID string) error
        + UpdateMfaActive(userID string, active bool) error
        + UpdateMfaSecret(userID string, secret string) error
        + UpdateNotifyProps(userID string, props <font color=blue>map</font>[string]string) error
        + UpdatePassword(userID string, newPassword string) error
        + UpdateUpdateAt(userID string) (int64, error)
        + VerifyEmail(userID string, email string) (string, error)

    }
    class OpenTracingLayerUserTermsOfServiceStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + Delete(userID string, termsOfServiceId string) error
        + GetByUser(userID string) (*model.UserTermsOfService, error)
        + Save(userTermsOfService *model.UserTermsOfService) (*model.UserTermsOfService, error)

    }
    class OpenTracingLayerWebhookStore << (S,Aquamarine) >> {
        + Root *OpenTracingLayer

        + AnalyticsIncomingCount(teamID string) (int64, error)
        + AnalyticsOutgoingCount(teamID string) (int64, error)
        + ClearCaches() 
        + DeleteIncoming(webhookID string, timestamp int64) error
        + DeleteOutgoing(webhookID string, timestamp int64) error
        + GetIncoming(id string, allowFromCache bool) (*model.IncomingWebhook, error)
        + GetIncomingByChannel(channelID string) ([]*model.IncomingWebhook, error)
        + GetIncomingByTeam(teamID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingByTeamByUser(teamID string, userID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingList(offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingListByUser(userID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetOutgoing(id string) (*model.OutgoingWebhook, error)
        + GetOutgoingByChannel(channelID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByChannelByUser(channelID string, userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByTeam(teamID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByTeamByUser(teamID string, userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingList(offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingListByUser(userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + InvalidateWebhookCache(webhook string) 
        + PermanentDeleteIncomingByChannel(channelID string) error
        + PermanentDeleteIncomingByUser(userID string) error
        + PermanentDeleteOutgoingByChannel(channelID string) error
        + PermanentDeleteOutgoingByUser(userID string) error
        + SaveIncoming(webhook *model.IncomingWebhook) (*model.IncomingWebhook, error)
        + SaveOutgoing(webhook *model.OutgoingWebhook) (*model.OutgoingWebhook, error)
        + UpdateIncoming(webhook *model.IncomingWebhook) (*model.IncomingWebhook, error)
        + UpdateOutgoing(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, error)

    }
}
"store.Store" *-- "opentracinglayer.OpenTracingLayer"
"store.AuditStore" *-- "opentracinglayer.OpenTracingLayerAuditStore"
"store.BotStore" *-- "opentracinglayer.OpenTracingLayerBotStore"
"store.ChannelMemberHistoryStore" *-- "opentracinglayer.OpenTracingLayerChannelMemberHistoryStore"
"store.ChannelStore" *-- "opentracinglayer.OpenTracingLayerChannelStore"
"store.ClusterDiscoveryStore" *-- "opentracinglayer.OpenTracingLayerClusterDiscoveryStore"
"store.CommandStore" *-- "opentracinglayer.OpenTracingLayerCommandStore"
"store.CommandWebhookStore" *-- "opentracinglayer.OpenTracingLayerCommandWebhookStore"
"store.ComplianceStore" *-- "opentracinglayer.OpenTracingLayerComplianceStore"
"store.DesktopTokensStore" *-- "opentracinglayer.OpenTracingLayerDesktopTokensStore"
"store.DraftStore" *-- "opentracinglayer.OpenTracingLayerDraftStore"
"store.EmojiStore" *-- "opentracinglayer.OpenTracingLayerEmojiStore"
"store.FileInfoStore" *-- "opentracinglayer.OpenTracingLayerFileInfoStore"
"store.GroupStore" *-- "opentracinglayer.OpenTracingLayerGroupStore"
"store.JobStore" *-- "opentracinglayer.OpenTracingLayerJobStore"
"store.LicenseStore" *-- "opentracinglayer.OpenTracingLayerLicenseStore"
"store.LinkMetadataStore" *-- "opentracinglayer.OpenTracingLayerLinkMetadataStore"
"store.NotifyAdminStore" *-- "opentracinglayer.OpenTracingLayerNotifyAdminStore"
"store.OAuthStore" *-- "opentracinglayer.OpenTracingLayerOAuthStore"
"store.OutgoingOAuthConnectionStore" *-- "opentracinglayer.OpenTracingLayerOutgoingOAuthConnectionStore"
"store.PluginStore" *-- "opentracinglayer.OpenTracingLayerPluginStore"
"store.PostAcknowledgementStore" *-- "opentracinglayer.OpenTracingLayerPostAcknowledgementStore"
"store.PostPersistentNotificationStore" *-- "opentracinglayer.OpenTracingLayerPostPersistentNotificationStore"
"store.PostPriorityStore" *-- "opentracinglayer.OpenTracingLayerPostPriorityStore"
"store.PostStore" *-- "opentracinglayer.OpenTracingLayerPostStore"
"store.PreferenceStore" *-- "opentracinglayer.OpenTracingLayerPreferenceStore"
"store.ProductNoticesStore" *-- "opentracinglayer.OpenTracingLayerProductNoticesStore"
"store.ReactionStore" *-- "opentracinglayer.OpenTracingLayerReactionStore"
"store.RemoteClusterStore" *-- "opentracinglayer.OpenTracingLayerRemoteClusterStore"
"store.RetentionPolicyStore" *-- "opentracinglayer.OpenTracingLayerRetentionPolicyStore"
"store.RoleStore" *-- "opentracinglayer.OpenTracingLayerRoleStore"
"store.SchemeStore" *-- "opentracinglayer.OpenTracingLayerSchemeStore"
"store.SessionStore" *-- "opentracinglayer.OpenTracingLayerSessionStore"
"store.SharedChannelStore" *-- "opentracinglayer.OpenTracingLayerSharedChannelStore"
"store.StatusStore" *-- "opentracinglayer.OpenTracingLayerStatusStore"
"store.SystemStore" *-- "opentracinglayer.OpenTracingLayerSystemStore"
"store.TeamStore" *-- "opentracinglayer.OpenTracingLayerTeamStore"
"store.TermsOfServiceStore" *-- "opentracinglayer.OpenTracingLayerTermsOfServiceStore"
"store.ThreadStore" *-- "opentracinglayer.OpenTracingLayerThreadStore"
"store.TokenStore" *-- "opentracinglayer.OpenTracingLayerTokenStore"
"store.TrueUpReviewStore" *-- "opentracinglayer.OpenTracingLayerTrueUpReviewStore"
"store.UploadSessionStore" *-- "opentracinglayer.OpenTracingLayerUploadSessionStore"
"store.UserAccessTokenStore" *-- "opentracinglayer.OpenTracingLayerUserAccessTokenStore"
"store.UserStore" *-- "opentracinglayer.OpenTracingLayerUserStore"
"store.UserTermsOfServiceStore" *-- "opentracinglayer.OpenTracingLayerUserTermsOfServiceStore"
"store.WebhookStore" *-- "opentracinglayer.OpenTracingLayerWebhookStore"

"store.AuditStore" <|-- "opentracinglayer.OpenTracingLayerAuditStore"
"store.BotStore" <|-- "opentracinglayer.OpenTracingLayerBotStore"
"store.ChannelMemberHistoryStore" <|-- "opentracinglayer.OpenTracingLayerChannelMemberHistoryStore"
"store.ChannelStore" <|-- "opentracinglayer.OpenTracingLayerChannelStore"
"store.ClusterDiscoveryStore" <|-- "opentracinglayer.OpenTracingLayerClusterDiscoveryStore"
"store.CommandStore" <|-- "opentracinglayer.OpenTracingLayerCommandStore"
"store.CommandWebhookStore" <|-- "opentracinglayer.OpenTracingLayerCommandWebhookStore"
"store.ComplianceStore" <|-- "opentracinglayer.OpenTracingLayerComplianceStore"
"store.DesktopTokensStore" <|-- "opentracinglayer.OpenTracingLayerDesktopTokensStore"
"store.DraftStore" <|-- "opentracinglayer.OpenTracingLayerDraftStore"
"store.EmojiStore" <|-- "opentracinglayer.OpenTracingLayerEmojiStore"
"store.FileInfoStore" <|-- "opentracinglayer.OpenTracingLayerFileInfoStore"
"store.GroupStore" <|-- "opentracinglayer.OpenTracingLayerGroupStore"
"store.JobStore" <|-- "opentracinglayer.OpenTracingLayerJobStore"
"store.LicenseStore" <|-- "opentracinglayer.OpenTracingLayerLicenseStore"
"store.LinkMetadataStore" <|-- "opentracinglayer.OpenTracingLayerLinkMetadataStore"
"store.NotifyAdminStore" <|-- "opentracinglayer.OpenTracingLayerNotifyAdminStore"
"store.OAuthStore" <|-- "opentracinglayer.OpenTracingLayerOAuthStore"
"store.OutgoingOAuthConnectionStore" <|-- "opentracinglayer.OpenTracingLayerOutgoingOAuthConnectionStore"
"store.PluginStore" <|-- "opentracinglayer.OpenTracingLayerPluginStore"
"store.PostAcknowledgementStore" <|-- "opentracinglayer.OpenTracingLayerPostAcknowledgementStore"
"store.PostPersistentNotificationStore" <|-- "opentracinglayer.OpenTracingLayerPostPersistentNotificationStore"
"store.PostPriorityStore" <|-- "opentracinglayer.OpenTracingLayerPostPriorityStore"
"store.PostStore" <|-- "opentracinglayer.OpenTracingLayerPostStore"
"store.PreferenceStore" <|-- "opentracinglayer.OpenTracingLayerPreferenceStore"
"store.ProductNoticesStore" <|-- "opentracinglayer.OpenTracingLayerProductNoticesStore"
"store.ReactionStore" <|-- "opentracinglayer.OpenTracingLayerReactionStore"
"store.RemoteClusterStore" <|-- "opentracinglayer.OpenTracingLayerRemoteClusterStore"
"store.RetentionPolicyStore" <|-- "opentracinglayer.OpenTracingLayerRetentionPolicyStore"
"store.RoleStore" <|-- "opentracinglayer.OpenTracingLayerRoleStore"
"store.SchemeStore" <|-- "opentracinglayer.OpenTracingLayerSchemeStore"
"store.SessionStore" <|-- "opentracinglayer.OpenTracingLayerSessionStore"
"store.SharedChannelStore" <|-- "opentracinglayer.OpenTracingLayerSharedChannelStore"
"store.StatusStore" <|-- "opentracinglayer.OpenTracingLayerStatusStore"
"hosted_purchase_screening.ScreenTimeStore" <|-- "opentracinglayer.OpenTracingLayerSystemStore"
"store.SystemStore" <|-- "opentracinglayer.OpenTracingLayerSystemStore"
"store.TeamStore" <|-- "opentracinglayer.OpenTracingLayerTeamStore"
"store.TermsOfServiceStore" <|-- "opentracinglayer.OpenTracingLayerTermsOfServiceStore"
"store.ThreadStore" <|-- "opentracinglayer.OpenTracingLayerThreadStore"
"store.TokenStore" <|-- "opentracinglayer.OpenTracingLayerTokenStore"
"store.TrueUpReviewStore" <|-- "opentracinglayer.OpenTracingLayerTrueUpReviewStore"
"store.UploadSessionStore" <|-- "opentracinglayer.OpenTracingLayerUploadSessionStore"
"store.UserAccessTokenStore" <|-- "opentracinglayer.OpenTracingLayerUserAccessTokenStore"
"store.UserStore" <|-- "opentracinglayer.OpenTracingLayerUserStore"
"store.UserTermsOfServiceStore" <|-- "opentracinglayer.OpenTracingLayerUserTermsOfServiceStore"
"store.WebhookStore" <|-- "opentracinglayer.OpenTracingLayerWebhookStore"

namespace platform {
    interface BroadcastHook  {
        + Process(msg *HookedWebSocketEvent, webConn *WebConn, args <font color=blue>map</font>[string]any) error

    }
    class Busy << (S,Aquamarine) >> {
        + IsBusy() bool
        + Set(dur time.Duration) 
        + Clear() 
        + Expires() time.Time
        + ClusterEventChanged(sbs *model.ServerBusyState) 
        + ToJSON() ([]byte, error)

    }
    class CheckConnResult << (S,Aquamarine) >> {
        + ConnectionID string
        + UserID string
        + ActiveQueue <font color=blue>chan</font> model.WebSocketMessage
        + DeadQueue []*model.WebSocketEvent
        + DeadQueuePointer int
        + ReuseCount int

    }
    class ClusterDiscoveryService << (S,Aquamarine) >> {
        + Start() 
        + Stop() 

    }
    interface HookRunner  {
        + RunMultiHook(hookRunnerFunc <font color=blue>func</font>(plugin.Hooks) bool, hookId int) 
        + GetPluginsEnvironment() *plugin.Environment

    }
    class HookedWebSocketEvent << (S,Aquamarine) >> {
        + Add(key string, value any) 
        + EventType() model.WebsocketEventType
        + Get(key string) any
        + Event() *model.WebSocketEvent

    }
    class Hub << (S,Aquamarine) >> {
        + Register(webConn *WebConn) 
        + Unregister(webConn *WebConn) 
        + IsRegistered(userID string, sessionToken string) bool
        + CheckConn(userID string, connectionID string) *CheckConnResult
        + Broadcast(message *model.WebSocketEvent) 
        + InvalidateUser(userID string) 
        + UpdateActivity(userID string, sessionToken string, activityAt int64) 
        + SendMessage(conn *WebConn, msg model.WebSocketMessage) 
        + Stop() 
        + Start() 

    }
    class JWTClaims << (S,Aquamarine) >> {
        + LicenseID string
        + ActiveUsers int64

    }
    class PlatformService << (S,Aquamarine) >> {
        + Store store.Store
        + WebSocketRouter *WebSocketRouter
        + Busy *Busy
        + SearchEngine *searchengine.Broker
        + Jobs *jobs.JobServer

        + Cluster() einterfaces.ClusterInterface
        + NewClusterDiscoveryService() *ClusterDiscoveryService
        + IsLeader() bool
        + SetCluster(impl einterfaces.ClusterInterface) 
        + PublishPluginClusterEvent(productID string, ev model.PluginClusterEvent, opts model.PluginClusterEventSendOptions) error
        + PublishWebSocketEvent(productID string, event string, payload <font color=blue>map</font>[string]any, broadcast *model.WebsocketBroadcast) 
        + SetPluginKeyWithOptions(productID string, key string, value []byte, options model.PluginKVSetOptions) (bool, *model.AppError)
        + KVGet(productID string, key string) ([]byte, *model.AppError)
        + KVDelete(productID string, key string) *model.AppError
        + KVList(productID string, page int, perPage int) ([]string, *model.AppError)
        + AddClusterLeaderChangedListener(listener <font color=blue>func</font>() ) string
        + RemoveClusterLeaderChangedListener(id string) 
        + InvokeClusterLeaderChangedListeners() 
        + Publish(message *model.WebSocketEvent) 
        + PublishSkipClusterSend(event *model.WebSocketEvent) 
        + ListPluginKeys(pluginID string, page int, perPage int) ([]string, *model.AppError)
        + DeletePluginKey(pluginID string, key string) *model.AppError
        + GetClusterId() string
        + RegisterClusterHandlers() 
        + RegisterClusterMessageHandler(ev model.ClusterEvent, h einterfaces.ClusterMessageHandler) 
        + ClusterHandlersPreCheck() error
        + ClusterPublishHandler(msg *model.ClusterMessage) 
        + ClusterUpdateStatusHandler(msg *model.ClusterMessage) 
        + ClusterInvalidateAllCachesHandler(msg *model.ClusterMessage) 
        + ClearSessionCacheForUserSkipClusterSend(userID string) 
        + ClearSessionCacheForAllUsersSkipClusterSend() 
        + InvalidateAllCachesSkipSend() 
        + InvalidateAllCaches() *model.AppError
        + Config() *model.Config
        + AddConfigListener(listener <font color=blue>func</font>(*model.Config, *model.Config) ) string
        + RemoveConfigListener(id string) 
        + UpdateConfig(f <font color=blue>func</font>(*model.Config) ) 
        + IsConfigReadOnly() bool
        + SaveConfig(newCfg *model.Config, sendConfigChangeClusterMessage bool) (*model.Config, *model.Config, *model.AppError)
        + ReloadConfig() error
        + GetEnvironmentOverridesWithFilter(filter <font color=blue>func</font>(reflect.StructField) bool) <font color=blue>map</font>[string]<font color=blue>interface</font>{}
        + GetEnvironmentOverrides() <font color=blue>map</font>[string]<font color=blue>interface</font>{}
        + DescribeConfig() string
        + CleanUpConfig() error
        + ConfigureLogger(name string, logger *mlog.Logger, logSettings *model.LogSettings, getPath <font color=blue>func</font>(string) string) error
        + GetConfigStore() *config.Store
        + GetConfigFile(name string) ([]byte, error)
        + SetConfigFile(name string, data []byte) error
        + RemoveConfigFile(name string) error
        + HasConfigFile(name string) (bool, error)
        + SetConfigReadOnlyFF(readOnly bool) 
        + ClientConfigHash() string
        + AsymmetricSigningKey() *ecdsa.PrivateKey
        + EnsureAsymmetricSigningKey() error
        + LimitedClientConfigWithComputed() <font color=blue>map</font>[string]string
        + ClientConfigWithComputed() <font color=blue>map</font>[string]string
        + LimitedClientConfig() <font color=blue>map</font>[string]string
        + IsFirstUserAccount() bool
        + MaxPostSize() int
        + GetSystemInstallDate() (int64, *model.AppError)
        + ClientConfig() <font color=blue>map</font>[string]string
        + SetupFeatureFlags() 
        + StopFeatureFlagUpdateJob() 
        + Go(f <font color=blue>func</font>() ) 
        + GoBuffered(f <font color=blue>func</font>() ) 
        + LicenseManager() einterfaces.LicenseInterface
        + SetLicenseManager(impl einterfaces.LicenseInterface) 
        + License() *model.License
        + LoadLicense() 
        + SaveLicense(licenseBytes []byte) (*model.License, *model.AppError)
        + SetLicense(license *model.License) bool
        + ValidateAndSetLicenseBytes(b []byte) bool
        + SetClientLicense(m <font color=blue>map</font>[string]string) 
        + ClientLicense() <font color=blue>map</font>[string]string
        + RemoveLicense() *model.AppError
        + AddLicenseListener(listener <font color=blue>func</font>(*model.License, *model.License) ) string
        + RemoveLicenseListener(id string) 
        + GetSanitizedClientLicense() <font color=blue>map</font>[string]string
        + RequestTrialLicense(trialRequest *model.TrialLicenseRequest) *model.AppError
        + GenerateRenewalToken(expiration time.Duration) (string, *model.AppError)
        + GenerateLicenseRenewalLink() (string, string, *model.AppError)
        + Log() mlog.LoggerIFace
        + ReconfigureLogger() error
        + Logger() *mlog.Logger
        + NotificationsLogger() *mlog.Logger
        + EnableLoggingMetrics() 
        + RemoveUnlicensedLogTargets(license *model.License) 
        + GetLogsSkipSend(page int, perPage int, logFilter *model.LogFilter) ([]string, *model.AppError)
        + HandleMetrics(route string, h http.Handler) 
        + RestartMetrics() error
        + Metrics() einterfaces.MetricsInterface
        + StartSearchEngine() (string, string)
        + StopSearchEngine() 
        + Start(broadcastHooks <font color=blue>map</font>[string]BroadcastHook) error
        + ShutdownMetrics() error
        + ShutdownConfig() error
        + SetTelemetryId(id string) 
        + PostTelemetryIdHook() 
        + SetLogger(logger *mlog.Logger) 
        + TotalWebsocketConnections() int
        + Shutdown() error
        + CacheProvider() cache.Provider
        + StatusCache() cache.Cache
        + SetSqlStore(s *sqlstore.SqlStore) 
        + SetSharedChannelService(s SharedChannelServiceIFace) 
        + GetSharedChannelService() SharedChannelServiceIFace
        + SetPluginsEnvironment(runner HookRunner) 
        + GetPluginStatuses() (model.PluginStatuses, *model.AppError)
        + FileBackend() filestore.FileBackend
        + ExportFileBackend() filestore.FileBackend
        + ReturnSessionToPool(session *model.Session) 
        + CreateSession(c request.CTX, session *model.Session) (*model.Session, error)
        + GetSessionContext(c request.CTX, token string) (*model.Session, error)
        + GetSessions(c request.CTX, userID string) ([]*model.Session, error)
        + AddSessionToCache(session *model.Session) 
        + ClearUserSessionCacheLocal(userID string) 
        + ClearAllUsersSessionCacheLocal() 
        + ClearUserSessionCache(userID string) 
        + ClearAllUsersSessionCache() 
        + GetSession(c request.CTX, token string) (*model.Session, error)
        + GetSessionByID(c request.CTX, sessionID string) (*model.Session, error)
        + RevokeSessionsFromAllUsers() error
        + RevokeSessionsForDeviceId(c request.CTX, userID string, deviceID string, currentSessionId string) error
        + RevokeSession(c request.CTX, session *model.Session) error
        + RevokeAccessToken(c request.CTX, token string) error
        + SetSessionExpireInHours(session *model.Session, hours int) 
        + ExtendSessionExpiry(session *model.Session, newExpiry int64) error
        + UpdateSessionsIsGuest(c request.CTX, user *model.User, isGuest bool) error
        + RevokeAllSessions(c request.CTX, userID string) error
        + SharedChannelSyncHandler(event *model.WebSocketEvent) 
        + AddStatusCacheSkipClusterSend(status *model.Status) 
        + AddStatusCache(status *model.Status) 
        + GetAllStatuses() <font color=blue>map</font>[string]*model.Status
        + GetStatusesByIds(userIDs []string) (<font color=blue>map</font>[string]any, *model.AppError)
        + GetUserStatusesByIds(userIDs []string) ([]*model.Status, *model.AppError)
        + BroadcastStatus(status *model.Status) 
        + SaveAndBroadcastStatus(status *model.Status) 
        + GetStatusFromCache(userID string) *model.Status
        + GetStatus(userID string) (*model.Status, *model.AppError)
        + SetStatusLastActivityAt(userID string, activityAt int64) 
        + UpdateLastActivityAtIfNeeded(session model.Session) 
        + SetStatusOnline(userID string, manual bool) 
        + SetStatusOffline(userID string, manual bool) 
        + SetStatusAwayIfNeeded(userID string, manual bool) 
        + SetStatusDoNotDisturbTimed(userId string, endtime int64) 
        + SetStatusDoNotDisturb(userID string) 
        + SetStatusOutOfOffice(userID string) 
        + PopulateWebConnConfig(s *model.Session, cfg *WebConnConfig, seqVal string) (*WebConnConfig, error)
        + NewWebConn(cfg *WebConnConfig, suite SuiteIFace, runner HookRunner) *WebConn
        + InvalidateCacheForWebhook(webhookID string) 
        + HubStop() 
        + GetHubForUserId(userID string) *Hub
        + HubRegister(webConn *WebConn) 
        + HubUnregister(webConn *WebConn) 
        + InvalidateCacheForChannel(channel *model.Channel) 
        + InvalidateCacheForChannelMembers(channelID string) 
        + InvalidateCacheForChannelMembersNotifyProps(channelID string) 
        + InvalidateCacheForChannelPosts(channelID string) 
        + InvalidateCacheForUser(userID string) 
        + InvalidateCacheForUserTeams(userID string) 
        + UpdateWebConnUserActivity(session model.Session, activityAt int64) 
        + SessionIsRegistered(session model.Session) bool
        + CheckWebConn(userID string, connectionID string) *CheckConnResult

    }
    class ServiceConfig << (S,Aquamarine) >> {
        + ConfigStore *config.Store
        + Store store.Store
        + Cluster einterfaces.ClusterInterface

    }
    interface SharedChannelServiceIFace  {
        + Shutdown() error
        + Start() error
        + NotifyChannelChanged(channelId string) 
        + NotifyUserProfileChanged(userID string) 
        + SendChannelInvite(channel *model.Channel, userId string, rc *model.RemoteCluster, options ...sharedchannel.InviteOption) error
        + Active() bool
        + InviteRemoteToChannel(channelID string, remoteID string, userID string, shareIfNotShared bool) error
        + UninviteRemoteFromChannel(channelID string, remoteID string) error
        + ShareChannel(sc *model.SharedChannel) (*model.SharedChannel, error)
        + CheckChannelNotShared(channelID string) error
        + CheckChannelIsShared(channelID string) error
        + CheckCanInviteToSharedChannel(channelId string) error

    }
    interface SuiteIFace  {
        + GetSession(token string) (*model.Session, *model.AppError)
        + RolesGrantPermission(roleNames []string, permissionId string) bool
        + UserCanSeeOtherUser(c request.CTX, userID string, otherUserId string) (bool, *model.AppError)

    }
    class WebConn << (S,Aquamarine) >> {
        + Platform *PlatformService
        + Suite SuiteIFace
        + HookRunner HookRunner
        + WebSocket *websocket.Conn
        + T i18n.TranslateFunc
        + Locale string
        + Sequence int64
        + UserId string

        + Close() 
        + GetSessionExpiresAt() int64
        + SetSessionExpiresAt(v int64) 
        + GetSessionToken() string
        + SetSessionToken(v string) 
        + SetConnectionID(id string) 
        + GetConnectionID() string
        + SetActiveChannelID(id string) 
        + GetActiveChannelID() string
        + SetActiveTeamID(id string) 
        + GetActiveTeamID() string
        + GetActiveRHSThreadChannelID() string
        + SetActiveRHSThreadChannelID(id string) 
        + GetActiveThreadViewThreadChannelID() string
        + SetActiveThreadViewThreadChannelID(id string) 
        + GetSession() *model.Session
        + SetSession(v *model.Session) 
        + Pump() 
        + InvalidateCache() 
        + IsAuthenticated() bool
        + ShouldSendEventToGuest(msg *model.WebSocketEvent) bool
        + ShouldSendEvent(msg *model.WebSocketEvent) bool

    }
    class WebConnConfig << (S,Aquamarine) >> {
        + WebSocket *websocket.Conn
        + Session model.Session
        + TFunc i18n.TranslateFunc
        + Locale string
        + ConnectionID string
        + Active bool
        + ReuseCount int

    }
    class WebSocketRouter << (S,Aquamarine) >> {
        + Handle(action string, handler webSocketHandler) 
        + ServeWebSocket(conn *WebConn, r *model.WebSocketRequest) 

    }
    class hubConnectionIndex << (S,Aquamarine) >> {
        + Add(wc *WebConn) 
        + Remove(wc *WebConn) 
        + Has(wc *WebConn) bool
        + ForUser(id string) []*WebConn
        + ForConnection(id string) *WebConn
        + All() <font color=blue>map</font>[*WebConn]int
        + RemoveInactiveByConnectionID(userID string, connectionID string) *WebConn
        + RemoveInactiveConnections() 
        + AllActive() int

    }
    class mockSharedChannelService << (S,Aquamarine) >> {
        + NotifyChannelChanged(channelId string) 
        + NotifyUserProfileChanged(userId string) 
        + Shutdown() error
        + Start() error
        + Active() bool
        + SendChannelInvite(channel *model.Channel, userId string, rc *model.RemoteCluster, options ...sharedchannel.InviteOption) error
        + NumInvitations() int

    }
    class platform.MockOptionSharedChannelService << (T, #FF7700) >>  {
    }
    class platform.Option << (T, #FF7700) >>  {
    }
    class platformMetrics << (S,Aquamarine) >> {
    }
    class pluginWSPostedHook << (S,Aquamarine) >> {
    }
    class webConnActivityMessage << (S,Aquamarine) >> {
    }
    class webConnCheckMessage << (S,Aquamarine) >> {
    }
    class webConnDirectMessage << (S,Aquamarine) >> {
    }
    class webConnSessionMessage << (S,Aquamarine) >> {
    }
    interface webSocketHandler  {
        + ServeWebSocket( *WebConn,  *model.WebSocketRequest) 

    }
}
"model.ClusterDiscovery" *-- "platform.ClusterDiscoveryService"
"jwt.RegisteredClaims" *-- "platform.JWTClaims"
"platform.SharedChannelServiceIFace" *-- "platform.mockSharedChannelService"

"app.configService" <|-- "platform.PlatformService"
"teams.WebHub" <|-- "platform.PlatformService"
"platform.webSocketHandler" <|-- "platform.WebSocketRouter"

namespace plugin_api_tests {
    class BasicConfig << (S,Aquamarine) >> {
        + BasicChannelID string
        + BasicChannelName string
        + BasicPostID string
        + BasicPostMessage string
        + BasicTeamDisplayName string
        + BasicTeamID string
        + BasicTeamName string
        + BasicUser2Email string
        + BasicUser2Id string
        + BasicUserEmail string
        + BasicUserID string

    }
}


namespace plugins {
    interface AppIface  {
        + DeleteAllExpiredPluginKeys() *model.AppError

    }
    class Worker << (S,Aquamarine) >> {
        + Run() 
        + Stop() 
        + JobChannel() <font color=blue>chan</font> model.Job
        + IsEnabled(cfg *model.Config) bool
        + DoJob(job *model.Job) 

    }
}


namespace post_persistent_notifications {
    interface AppIface  {
        + SendPersistentNotifications() error
        + IsPersistentNotificationsEnabled() bool

    }
    class Scheduler << (S,Aquamarine) >> {
        + NextScheduleTime(cfg *model.Config, _ time.Time, _ bool, _ *model.Job) *time.Time

    }
}
"jobs.PeriodicScheduler" *-- "post_persistent_notifications.Scheduler"


namespace product_notices {
    interface AppIface  {
        + UpdateProductNotices() *model.AppError

    }
    class Scheduler << (S,Aquamarine) >> {
        + NextScheduleTime(cfg *model.Config, _ time.Time, pendingJobs bool, lastSuccessfulJob *model.Job) *time.Time

    }
}
"jobs.PeriodicScheduler" *-- "product_notices.Scheduler"


namespace resend_invitation_email {
    interface AppIface  {
        + GetUserByEmail(email string) (*model.User, *model.AppError)
        + GetTeamMembersByIds(teamID string, userIDs []string, restrictions *model.ViewUsersRestrictions) ([]*model.TeamMember, *model.AppError)
        + InviteNewUsersToTeamGracefully(memberInvite *model.MemberInvite, teamID string, senderId string, reminderInterval string) ([]*model.EmailInviteWithError, *model.AppError)

    }
    class ResendInvitationEmailWorker << (S,Aquamarine) >> {
        + Run() 
        + IsEnabled(cfg *model.Config) bool
        + Stop() 
        + JobChannel() <font color=blue>chan</font> model.Job
        + DoJob(job *model.Job) 
        + GetDurations(job *model.Job) (int64, int64)
        + TearDown(logger mlog.LoggerIFace, job *model.Job) 
        + ResendEmails(logger mlog.LoggerIFace, job *model.Job, interval string) 

    }
}


namespace retrylayer {
    class RetryLayer << (S,Aquamarine) >> {
        + AuditStore store.AuditStore
        + BotStore store.BotStore
        + ChannelStore store.ChannelStore
        + ChannelMemberHistoryStore store.ChannelMemberHistoryStore
        + ClusterDiscoveryStore store.ClusterDiscoveryStore
        + CommandStore store.CommandStore
        + CommandWebhookStore store.CommandWebhookStore
        + ComplianceStore store.ComplianceStore
        + DesktopTokensStore store.DesktopTokensStore
        + DraftStore store.DraftStore
        + EmojiStore store.EmojiStore
        + FileInfoStore store.FileInfoStore
        + GroupStore store.GroupStore
        + JobStore store.JobStore
        + LicenseStore store.LicenseStore
        + LinkMetadataStore store.LinkMetadataStore
        + NotifyAdminStore store.NotifyAdminStore
        + OAuthStore store.OAuthStore
        + OutgoingOAuthConnectionStore store.OutgoingOAuthConnectionStore
        + PluginStore store.PluginStore
        + PostStore store.PostStore
        + PostAcknowledgementStore store.PostAcknowledgementStore
        + PostPersistentNotificationStore store.PostPersistentNotificationStore
        + PostPriorityStore store.PostPriorityStore
        + PreferenceStore store.PreferenceStore
        + ProductNoticesStore store.ProductNoticesStore
        + ReactionStore store.ReactionStore
        + RemoteClusterStore store.RemoteClusterStore
        + RetentionPolicyStore store.RetentionPolicyStore
        + RoleStore store.RoleStore
        + SchemeStore store.SchemeStore
        + SessionStore store.SessionStore
        + SharedChannelStore store.SharedChannelStore
        + StatusStore store.StatusStore
        + SystemStore store.SystemStore
        + TeamStore store.TeamStore
        + TermsOfServiceStore store.TermsOfServiceStore
        + ThreadStore store.ThreadStore
        + TokenStore store.TokenStore
        + TrueUpReviewStore store.TrueUpReviewStore
        + UploadSessionStore store.UploadSessionStore
        + UserStore store.UserStore
        + UserAccessTokenStore store.UserAccessTokenStore
        + UserTermsOfServiceStore store.UserTermsOfServiceStore
        + WebhookStore store.WebhookStore

        + Audit() store.AuditStore
        + Bot() store.BotStore
        + Channel() store.ChannelStore
        + ChannelMemberHistory() store.ChannelMemberHistoryStore
        + ClusterDiscovery() store.ClusterDiscoveryStore
        + Command() store.CommandStore
        + CommandWebhook() store.CommandWebhookStore
        + Compliance() store.ComplianceStore
        + DesktopTokens() store.DesktopTokensStore
        + Draft() store.DraftStore
        + Emoji() store.EmojiStore
        + FileInfo() store.FileInfoStore
        + Group() store.GroupStore
        + Job() store.JobStore
        + License() store.LicenseStore
        + LinkMetadata() store.LinkMetadataStore
        + NotifyAdmin() store.NotifyAdminStore
        + OAuth() store.OAuthStore
        + OutgoingOAuthConnection() store.OutgoingOAuthConnectionStore
        + Plugin() store.PluginStore
        + Post() store.PostStore
        + PostAcknowledgement() store.PostAcknowledgementStore
        + PostPersistentNotification() store.PostPersistentNotificationStore
        + PostPriority() store.PostPriorityStore
        + Preference() store.PreferenceStore
        + ProductNotices() store.ProductNoticesStore
        + Reaction() store.ReactionStore
        + RemoteCluster() store.RemoteClusterStore
        + RetentionPolicy() store.RetentionPolicyStore
        + Role() store.RoleStore
        + Scheme() store.SchemeStore
        + Session() store.SessionStore
        + SharedChannel() store.SharedChannelStore
        + Status() store.StatusStore
        + System() store.SystemStore
        + Team() store.TeamStore
        + TermsOfService() store.TermsOfServiceStore
        + Thread() store.ThreadStore
        + Token() store.TokenStore
        + TrueUpReview() store.TrueUpReviewStore
        + UploadSession() store.UploadSessionStore
        + User() store.UserStore
        + UserAccessToken() store.UserAccessTokenStore
        + UserTermsOfService() store.UserTermsOfServiceStore
        + Webhook() store.WebhookStore
        + Close() 
        + DropAllTables() 
        + LockToMaster() 
        + MarkSystemRanUnitTests() 
        + SetContext(context context.Context) 
        + TotalMasterDbConnections() int
        + TotalReadDbConnections() int
        + TotalSearchDbConnections() int
        + UnlockFromMaster() 

    }
    class RetryLayerAuditStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Get(user_id string, offset int, limit int) (model.Audits, error)
        + PermanentDeleteByUser(userID string) error
        + Save(audit *model.Audit) error

    }
    class RetryLayerBotStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Get(userID string, includeDeleted bool) (*model.Bot, error)
        + GetAll(options *model.BotGetOptions) ([]*model.Bot, error)
        + PermanentDelete(userID string) error
        + Save(bot *model.Bot) (*model.Bot, error)
        + Update(bot *model.Bot) (*model.Bot, error)

    }
    class RetryLayerChannelMemberHistoryStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + DeleteOrphanedRows(limit int) (int64, error)
        + GetChannelsLeftSince(userID string, since int64) ([]string, error)
        + GetUsersInChannelDuring(startTime int64, endTime int64, channelID string) ([]*model.ChannelMemberHistoryResult, error)
        + LogJoinEvent(userID string, channelID string, joinTime int64) error
        + LogLeaveEvent(userID string, channelID string, leaveTime int64) error
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)

    }
    class RetryLayerChannelStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + AnalyticsDeletedTypeCount(teamID string, channelType model.ChannelType) (int64, error)
        + AnalyticsTypeCount(teamID string, channelType model.ChannelType) (int64, error)
        + Autocomplete(rctx request.CTX, userID string, term string, includeDeleted bool, isGuest bool) (model.ChannelListWithTeamData, error)
        + AutocompleteInTeam(rctx request.CTX, teamID string, userID string, term string, includeDeleted bool, isGuest bool) (model.ChannelList, error)
        + AutocompleteInTeamForSearch(teamID string, userID string, term string, includeDeleted bool) (model.ChannelList, error)
        + ClearAllCustomRoleAssignments() error
        + ClearCaches() 
        + ClearMembersForUserCache() 
        + ClearSidebarOnTeamLeave(userID string, teamID string) error
        + CountPostsAfter(channelID string, timestamp int64, excludedUserID string) (int, int, error)
        + CountUrgentPostsAfter(channelID string, timestamp int64, excludedUserID string) (int, error)
        + CreateDirectChannel(ctx request.CTX, userID *model.User, otherUserID *model.User, channelOptions ...model.ChannelOption) (*model.Channel, error)
        + CreateInitialSidebarCategories(c request.CTX, userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, error)
        + CreateSidebarCategory(userID string, teamID string, newCategory *model.SidebarCategoryWithChannels) (*model.SidebarCategoryWithChannels, error)
        + Delete(channelID string, timestamp int64) error
        + DeleteAllSidebarChannelForChannel(channelID string) error
        + DeleteSidebarCategory(categoryID string) error
        + DeleteSidebarChannelsByPreferences(preferences model.Preferences) error
        + Get(id string, allowFromCache bool) (*model.Channel, error)
        + GetAll(teamID string) ([]*model.Channel, error)
        + GetAllChannelMemberIdsByChannelId(id string) ([]string, error)
        + GetAllChannelMembersForUser(userID string, allowFromCache bool, includeDeleted bool) (<font color=blue>map</font>[string]string, error)
        + GetAllChannelMembersNotifyPropsForChannel(channelID string, allowFromCache bool) (<font color=blue>map</font>[string]model.StringMap, error)
        + GetAllChannels(page int, perPage int, opts store.ChannelSearchOpts) (model.ChannelListWithTeamData, error)
        + GetAllChannelsCount(opts store.ChannelSearchOpts) (int64, error)
        + GetAllChannelsForExportAfter(limit int, afterID string) ([]*model.ChannelForExport, error)
        + GetAllDirectChannelsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.DirectChannelForExport, error)
        + GetByName(team_id string, name string, allowFromCache bool) (*model.Channel, error)
        + GetByNameIncludeDeleted(team_id string, name string, allowFromCache bool) (*model.Channel, error)
        + GetByNames(team_id string, names []string, allowFromCache bool) ([]*model.Channel, error)
        + GetByNamesIncludeDeleted(team_id string, names []string, allowFromCache bool) ([]*model.Channel, error)
        + GetChannelCounts(teamID string, userID string) (*model.ChannelCounts, error)
        + GetChannelMembersForExport(userID string, teamID string, includeArchivedChannel bool) ([]*model.ChannelMemberForExport, error)
        + GetChannelMembersTimezones(channelID string) ([]model.StringMap, error)
        + GetChannelUnread(channelID string, userID string) (*model.ChannelUnread, error)
        + GetChannels(teamID string, userID string, opts *model.ChannelSearchOpts) (model.ChannelList, error)
        + GetChannelsBatchForIndexing(startTime int64, startChannelID string, limit int) ([]*model.Channel, error)
        + GetChannelsByIds(channelIds []string, includeDeleted bool) ([]*model.Channel, error)
        + GetChannelsByScheme(schemeID string, offset int, limit int) (model.ChannelList, error)
        + GetChannelsByUser(userID string, includeDeleted bool, lastDeleteAt int, pageSize int, fromChannelID string) (model.ChannelList, error)
        + GetChannelsMemberCount(channelIDs []string) (<font color=blue>map</font>[string]int64, error)
        + GetChannelsWithTeamDataByIds(channelIds []string, includeDeleted bool) ([]*model.ChannelWithTeamData, error)
        + GetChannelsWithUnreadsAndWithMentions(ctx context.Context, channelIDs []string, userID string, userNotifyProps model.StringMap) ([]string, []string, <font color=blue>map</font>[string]int64, error)
        + GetDeleted(team_id string, offset int, limit int, userID string) (model.ChannelList, error)
        + GetDeletedByName(team_id string, name string) (*model.Channel, error)
        + GetFileCount(channelID string) (int64, error)
        + GetForPost(postID string) (*model.Channel, error)
        + GetGuestCount(channelID string, allowFromCache bool) (int64, error)
        + GetMany(ids []string, allowFromCache bool) (model.ChannelList, error)
        + GetMember(ctx context.Context, channelID string, userID string) (*model.ChannelMember, error)
        + GetMemberCount(channelID string, allowFromCache bool) (int64, error)
        + GetMemberCountFromCache(channelID string) int64
        + GetMemberCountsByGroup(ctx context.Context, channelID string, includeTimezones bool) ([]*model.ChannelMemberCountByGroup, error)
        + GetMemberForPost(postID string, userID string, includeArchivedChannels bool) (*model.ChannelMember, error)
        + GetMemberLastViewedAt(ctx context.Context, channelID string, userID string) (int64, error)
        + GetMembers(channelID string, offset int, limit int) (model.ChannelMembers, error)
        + GetMembersByChannelIds(channelIds []string, userID string) (model.ChannelMembers, error)
        + GetMembersByIds(channelID string, userIds []string) (model.ChannelMembers, error)
        + GetMembersForUser(teamID string, userID string) (model.ChannelMembers, error)
        + GetMembersForUserWithPagination(userID string, page int, perPage int) (model.ChannelMembersWithTeamData, error)
        + GetMembersInfoByChannelIds(channelIDs []string) (<font color=blue>map</font>[string][]*model.User, error)
        + GetMoreChannels(teamID string, userID string, offset int, limit int) (model.ChannelList, error)
        + GetPinnedPostCount(channelID string, allowFromCache bool) (int64, error)
        + GetPinnedPosts(channelID string) (*model.PostList, error)
        + GetPrivateChannelsForTeam(teamID string, offset int, limit int) (model.ChannelList, error)
        + GetPublicChannelsByIdsForTeam(teamID string, channelIds []string) (model.ChannelList, error)
        + GetPublicChannelsForTeam(teamID string, offset int, limit int) (model.ChannelList, error)
        + GetSidebarCategories(userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, error)
        + GetSidebarCategoriesForTeamForUser(userID string, teamID string) (*model.OrderedSidebarCategories, error)
        + GetSidebarCategory(categoryID string) (*model.SidebarCategoryWithChannels, error)
        + GetSidebarCategoryOrder(userID string, teamID string) ([]string, error)
        + GetTeamChannels(teamID string) (model.ChannelList, error)
        + GetTeamForChannel(channelID string) (*model.Team, error)
        + GetTeamMembersForChannel(channelID string) ([]string, error)
        + GroupSyncedChannelCount() (int64, error)
        + IncrementMentionCount(channelID string, userIDs []string, isRoot bool, isUrgent bool) error
        + InvalidateAllChannelMembersForUser(userID string) 
        + InvalidateCacheForChannelMembersNotifyProps(channelID string) 
        + InvalidateChannel(id string) 
        + InvalidateChannelByName(teamID string, name string) 
        + InvalidateGuestCount(channelID string) 
        + InvalidateMemberCount(channelID string) 
        + InvalidatePinnedPostCount(channelID string) 
        + MigrateChannelMembers(fromChannelID string, fromUserID string) (<font color=blue>map</font>[string]string, error)
        + PatchMultipleMembersNotifyProps(members []*model.ChannelMemberIdentifier, notifyProps <font color=blue>map</font>[string]string) ([]*model.ChannelMember, error)
        + PermanentDelete(ctx request.CTX, channelID string) error
        + PermanentDeleteByTeam(teamID string) error
        + PermanentDeleteMembersByChannel(ctx request.CTX, channelID string) error
        + PermanentDeleteMembersByUser(ctx request.CTX, userID string) error
        + RemoveAllDeactivatedMembers(ctx request.CTX, channelID string) error
        + RemoveMember(ctx request.CTX, channelID string, userID string) error
        + RemoveMembers(ctx request.CTX, channelID string, userIds []string) error
        + ResetAllChannelSchemes() error
        + Restore(channelID string, timestamp int64) error
        + Save(rctx request.CTX, channel *model.Channel, maxChannelsPerTeam int64) (*model.Channel, error)
        + SaveDirectChannel(ctx request.CTX, channel *model.Channel, member1 *model.ChannelMember, member2 *model.ChannelMember) (*model.Channel, error)
        + SaveMember(rctx request.CTX, member *model.ChannelMember) (*model.ChannelMember, error)
        + SaveMultipleMembers(members []*model.ChannelMember) ([]*model.ChannelMember, error)
        + SearchAllChannels(term string, opts store.ChannelSearchOpts) (model.ChannelListWithTeamData, int64, error)
        + SearchArchivedInTeam(teamID string, term string, userID string) (model.ChannelList, error)
        + SearchForUserInTeam(userID string, teamID string, term string, includeDeleted bool) (model.ChannelList, error)
        + SearchGroupChannels(userID string, term string) (model.ChannelList, error)
        + SearchInTeam(teamID string, term string, includeDeleted bool) (model.ChannelList, error)
        + SearchMore(userID string, teamID string, term string) (model.ChannelList, error)
        + SetDeleteAt(channelID string, deleteAt int64, updateAt int64) error
        + SetShared(channelId string, shared bool) error
        + Update(ctx request.CTX, channel *model.Channel) (*model.Channel, error)
        + UpdateLastViewedAt(channelIds []string, userID string) (<font color=blue>map</font>[string]int64, error)
        + UpdateLastViewedAtPost(unreadPost *model.Post, userID string, mentionCount int, mentionCountRoot int, urgentMentionCount int, setUnreadCountRoot bool) (*model.ChannelUnreadAt, error)
        + UpdateMember(ctx request.CTX, member *model.ChannelMember) (*model.ChannelMember, error)
        + UpdateMemberNotifyProps(channelID string, userID string, props <font color=blue>map</font>[string]string) (*model.ChannelMember, error)
        + UpdateMembersRole(channelID string, userIDs []string) error
        + UpdateMultipleMembers(members []*model.ChannelMember) ([]*model.ChannelMember, error)
        + UpdateSidebarCategories(userID string, teamID string, categories []*model.SidebarCategoryWithChannels) ([]*model.SidebarCategoryWithChannels, []*model.SidebarCategoryWithChannels, error)
        + UpdateSidebarCategoryOrder(userID string, teamID string, categoryOrder []string) error
        + UpdateSidebarChannelCategoryOnMove(channel *model.Channel, newTeamID string) error
        + UpdateSidebarChannelsByPreferences(preferences model.Preferences) error
        + UserBelongsToChannels(userID string, channelIds []string) (bool, error)

    }
    class RetryLayerClusterDiscoveryStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Cleanup() error
        + Delete(discovery *model.ClusterDiscovery) (bool, error)
        + Exists(discovery *model.ClusterDiscovery) (bool, error)
        + GetAll(discoveryType string, clusterName string) ([]*model.ClusterDiscovery, error)
        + Save(discovery *model.ClusterDiscovery) error
        + SetLastPingAt(discovery *model.ClusterDiscovery) error

    }
    class RetryLayerCommandStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + AnalyticsCommandCount(teamID string) (int64, error)
        + Delete(commandID string, timestamp int64) error
        + Get(id string) (*model.Command, error)
        + GetByTeam(teamID string) ([]*model.Command, error)
        + GetByTrigger(teamID string, trigger string) (*model.Command, error)
        + PermanentDeleteByTeam(teamID string) error
        + PermanentDeleteByUser(userID string) error
        + Save(webhook *model.Command) (*model.Command, error)
        + Update(hook *model.Command) (*model.Command, error)

    }
    class RetryLayerCommandWebhookStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Cleanup() 
        + Get(id string) (*model.CommandWebhook, error)
        + Save(webhook *model.CommandWebhook) (*model.CommandWebhook, error)
        + TryUse(id string, limit int) error

    }
    class RetryLayerComplianceStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + ComplianceExport(compliance *model.Compliance, cursor model.ComplianceExportCursor, limit int) ([]*model.CompliancePost, model.ComplianceExportCursor, error)
        + Get(id string) (*model.Compliance, error)
        + GetAll(offset int, limit int) (model.Compliances, error)
        + MessageExport(c request.CTX, cursor model.MessageExportCursor, limit int) ([]*model.MessageExport, model.MessageExportCursor, error)
        + Save(compliance *model.Compliance) (*model.Compliance, error)
        + Update(compliance *model.Compliance) (*model.Compliance, error)

    }
    class RetryLayerDesktopTokensStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Delete(token string) error
        + DeleteByUserId(userId string) error
        + DeleteOlderThan(minCreatedAt int64) error
        + GetUserId(token string, minCreatedAt int64) (*string, error)
        + Insert(token string, createAt int64, userId string) error

    }
    class RetryLayerDraftStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Delete(userID string, channelID string, rootID string) error
        + DeleteDraftsAssociatedWithPost(channelID string, rootID string) error
        + DeleteEmptyDraftsByCreateAtAndUserId(createAt int64, userId string) error
        + DeleteOrphanDraftsByCreateAtAndUserId(createAt int64, userId string) error
        + Get(userID string, channelID string, rootID string, includeDeleted bool) (*model.Draft, error)
        + GetDraftsForUser(userID string, teamID string) ([]*model.Draft, error)
        + GetLastCreateAtAndUserIdValuesForEmptyDraftsMigration(createAt int64, userId string) (int64, string, error)
        + Upsert(d *model.Draft) (*model.Draft, error)

    }
    class RetryLayerEmojiStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Delete(emoji *model.Emoji, timestamp int64) error
        + Get(c request.CTX, id string, allowFromCache bool) (*model.Emoji, error)
        + GetByName(c request.CTX, name string, allowFromCache bool) (*model.Emoji, error)
        + GetList(offset int, limit int, sort string) ([]*model.Emoji, error)
        + GetMultipleByName(c request.CTX, names []string) ([]*model.Emoji, error)
        + Save(emoji *model.Emoji) (*model.Emoji, error)
        + Search(name string, prefixOnly bool, limit int) ([]*model.Emoji, error)

    }
    class RetryLayerFileInfoStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + AttachToPost(c request.CTX, fileID string, postID string, channelID string, creatorID string) error
        + ClearCaches() 
        + CountAll() (int64, error)
        + DeleteForPost(c request.CTX, postID string) (string, error)
        + Get(id string) (*model.FileInfo, error)
        + GetByIds(ids []string) ([]*model.FileInfo, error)
        + GetByPath(path string) (*model.FileInfo, error)
        + GetFilesBatchForIndexing(startTime int64, startFileID string, includeDeleted bool, limit int) ([]*model.FileForIndexing, error)
        + GetForPost(postID string, readFromMaster bool, includeDeleted bool, allowFromCache bool) ([]*model.FileInfo, error)
        + GetForUser(userID string) ([]*model.FileInfo, error)
        + GetFromMaster(id string) (*model.FileInfo, error)
        + GetStorageUsage(allowFromCache bool, includeDeleted bool) (int64, error)
        + GetUptoNSizeFileTime(n int64) (int64, error)
        + GetWithOptions(page int, perPage int, opt *model.GetFileInfosOptions) ([]*model.FileInfo, error)
        + InvalidateFileInfosForPostCache(postID string, deleted bool) 
        + PermanentDelete(c request.CTX, fileID string) error
        + PermanentDeleteBatch(ctx request.CTX, endTime int64, limit int64) (int64, error)
        + PermanentDeleteByUser(ctx request.CTX, userID string) (int64, error)
        + Save(ctx request.CTX, info *model.FileInfo) (*model.FileInfo, error)
        + Search(ctx request.CTX, paramsList []*model.SearchParams, userID string, teamID string, page int, perPage int) (*model.FileInfoList, error)
        + SetContent(ctx request.CTX, fileID string, content string) error
        + Upsert(rctx request.CTX, info *model.FileInfo) (*model.FileInfo, error)

    }
    class RetryLayerGroupStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + AdminRoleGroupsForSyncableMember(userID string, syncableID string, syncableType model.GroupSyncableType) ([]string, error)
        + ChannelMembersMinusGroupMembers(channelID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, error)
        + ChannelMembersToAdd(since int64, channelID *string, includeRemovedMembers bool) ([]*model.UserChannelIDPair, error)
        + ChannelMembersToRemove(channelID *string) ([]*model.ChannelMember, error)
        + CountChannelMembersMinusGroupMembers(channelID string, groupIDs []string) (int64, error)
        + CountGroupsByChannel(channelID string, opts model.GroupSearchOpts) (int64, error)
        + CountGroupsByTeam(teamID string, opts model.GroupSearchOpts) (int64, error)
        + CountTeamMembersMinusGroupMembers(teamID string, groupIDs []string) (int64, error)
        + Create(group *model.Group) (*model.Group, error)
        + CreateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, error)
        + CreateWithUserIds(group *model.GroupWithUserIds) (*model.Group, error)
        + Delete(groupID string) (*model.Group, error)
        + DeleteGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, error)
        + DeleteMember(groupID string, userID string) (*model.GroupMember, error)
        + DeleteMembers(groupID string, userIDs []string) ([]*model.GroupMember, error)
        + DistinctGroupMemberCount() (int64, error)
        + DistinctGroupMemberCountForSource(source model.GroupSource) (int64, error)
        + Get(groupID string) (*model.Group, error)
        + GetAllBySource(groupSource model.GroupSource) ([]*model.Group, error)
        + GetAllGroupSyncablesByGroupId(groupID string, syncableType model.GroupSyncableType) ([]*model.GroupSyncable, error)
        + GetByIDs(groupIDs []string) ([]*model.Group, error)
        + GetByName(name string, opts model.GroupSearchOpts) (*model.Group, error)
        + GetByRemoteID(remoteID string, groupSource model.GroupSource) (*model.Group, error)
        + GetByUser(userID string) ([]*model.Group, error)
        + GetGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, error)
        + GetGroups(page int, perPage int, opts model.GroupSearchOpts, viewRestrictions *model.ViewUsersRestrictions) ([]*model.Group, error)
        + GetGroupsAssociatedToChannelsByTeam(teamID string, opts model.GroupSearchOpts) (<font color=blue>map</font>[string][]*model.GroupWithSchemeAdmin, error)
        + GetGroupsByChannel(channelID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, error)
        + GetGroupsByTeam(teamID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, error)
        + GetMember(groupID string, userID string) (*model.GroupMember, error)
        + GetMemberCount(groupID string) (int64, error)
        + GetMemberCountWithRestrictions(groupID string, viewRestrictions *model.ViewUsersRestrictions) (int64, error)
        + GetMemberUsers(groupID string) ([]*model.User, error)
        + GetMemberUsersInTeam(groupID string, teamID string) ([]*model.User, error)
        + GetMemberUsersNotInChannel(groupID string, channelID string) ([]*model.User, error)
        + GetMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetMemberUsersSortedPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions, teammateNameDisplay string) ([]*model.User, error)
        + GetNonMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GroupChannelCount() (int64, error)
        + GroupCount() (int64, error)
        + GroupCountBySource(source model.GroupSource) (int64, error)
        + GroupCountWithAllowReference() (int64, error)
        + GroupMemberCount() (int64, error)
        + GroupTeamCount() (int64, error)
        + PermanentDeleteMembersByUser(userID string) error
        + PermittedSyncableAdmins(syncableID string, syncableType model.GroupSyncableType) ([]string, error)
        + Restore(groupID string) (*model.Group, error)
        + TeamMembersMinusGroupMembers(teamID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, error)
        + TeamMembersToAdd(since int64, teamID *string, includeRemovedMembers bool) ([]*model.UserTeamIDPair, error)
        + TeamMembersToRemove(teamID *string) ([]*model.TeamMember, error)
        + Update(group *model.Group) (*model.Group, error)
        + UpdateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, error)
        + UpsertMember(groupID string, userID string) (*model.GroupMember, error)
        + UpsertMembers(groupID string, userIDs []string) ([]*model.GroupMember, error)

    }
    class RetryLayerJobStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Cleanup(expiryTime int64, batchSize int) error
        + Delete(id string) (string, error)
        + Get(c request.CTX, id string) (*model.Job, error)
        + GetAllByStatus(c request.CTX, status string) ([]*model.Job, error)
        + GetAllByType(c request.CTX, jobType string) ([]*model.Job, error)
        + GetAllByTypeAndStatus(c request.CTX, jobType string, status string) ([]*model.Job, error)
        + GetAllByTypePage(c request.CTX, jobType string, offset int, limit int) ([]*model.Job, error)
        + GetAllByTypesPage(c request.CTX, jobTypes []string, offset int, limit int) ([]*model.Job, error)
        + GetCountByStatusAndType(status string, jobType string) (int64, error)
        + GetNewestJobByStatusAndType(status string, jobType string) (*model.Job, error)
        + GetNewestJobByStatusesAndType(statuses []string, jobType string) (*model.Job, error)
        + Save(job *model.Job) (*model.Job, error)
        + SaveOnce(job *model.Job) (*model.Job, error)
        + UpdateOptimistically(job *model.Job, currentStatus string) (bool, error)
        + UpdateStatus(id string, status string) (*model.Job, error)
        + UpdateStatusOptimistically(id string, currentStatus string, newStatus string) (bool, error)

    }
    class RetryLayerLicenseStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Get(c request.CTX, id string) (*model.LicenseRecord, error)
        + GetAll() ([]*model.LicenseRecord, error)
        + Save(license *model.LicenseRecord) error

    }
    class RetryLayerLinkMetadataStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Get(url string, timestamp int64) (*model.LinkMetadata, error)
        + Save(linkMetadata *model.LinkMetadata) (*model.LinkMetadata, error)

    }
    class RetryLayerNotifyAdminStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + DeleteBefore(trial bool, now int64) error
        + Get(trial bool) ([]*model.NotifyAdminData, error)
        + GetDataByUserIdAndFeature(userId string, feature model.MattermostFeature) ([]*model.NotifyAdminData, error)
        + Save(data *model.NotifyAdminData) (*model.NotifyAdminData, error)
        + Update(userId string, requiredPlan string, requiredFeature model.MattermostFeature, now int64) error

    }
    class RetryLayerOAuthStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + DeleteApp(id string) error
        + GetAccessData(token string) (*model.AccessData, error)
        + GetAccessDataByRefreshToken(token string) (*model.AccessData, error)
        + GetAccessDataByUserForApp(userID string, clientId string) ([]*model.AccessData, error)
        + GetApp(id string) (*model.OAuthApp, error)
        + GetAppByUser(userID string, offset int, limit int) ([]*model.OAuthApp, error)
        + GetApps(offset int, limit int) ([]*model.OAuthApp, error)
        + GetAuthData(code string) (*model.AuthData, error)
        + GetAuthorizedApps(userID string, offset int, limit int) ([]*model.OAuthApp, error)
        + GetPreviousAccessData(userID string, clientId string) (*model.AccessData, error)
        + PermanentDeleteAuthDataByUser(userID string) error
        + RemoveAccessData(token string) error
        + RemoveAllAccessData() error
        + RemoveAuthData(code string) error
        + RemoveAuthDataByClientId(clientId string, userId string) error
        + RemoveAuthDataByUserId(userId string) error
        + SaveAccessData(accessData *model.AccessData) (*model.AccessData, error)
        + SaveApp(app *model.OAuthApp) (*model.OAuthApp, error)
        + SaveAuthData(authData *model.AuthData) (*model.AuthData, error)
        + UpdateAccessData(accessData *model.AccessData) (*model.AccessData, error)
        + UpdateApp(app *model.OAuthApp) (*model.OAuthApp, error)

    }
    class RetryLayerOutgoingOAuthConnectionStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + DeleteConnection(c request.CTX, id string) error
        + GetConnection(c request.CTX, id string) (*model.OutgoingOAuthConnection, error)
        + GetConnections(c request.CTX, filters model.OutgoingOAuthConnectionGetConnectionsFilter) ([]*model.OutgoingOAuthConnection, error)
        + SaveConnection(c request.CTX, conn *model.OutgoingOAuthConnection) (*model.OutgoingOAuthConnection, error)
        + UpdateConnection(c request.CTX, conn *model.OutgoingOAuthConnection) (*model.OutgoingOAuthConnection, error)

    }
    class RetryLayerPluginStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + CompareAndDelete(keyVal *model.PluginKeyValue, oldValue []byte) (bool, error)
        + CompareAndSet(keyVal *model.PluginKeyValue, oldValue []byte) (bool, error)
        + Delete(pluginID string, key string) error
        + DeleteAllExpired() error
        + DeleteAllForPlugin(PluginID string) error
        + Get(pluginID string, key string) (*model.PluginKeyValue, error)
        + List(pluginID string, page int, perPage int) ([]string, error)
        + SaveOrUpdate(keyVal *model.PluginKeyValue) (*model.PluginKeyValue, error)
        + SetWithOptions(pluginID string, key string, value []byte, options model.PluginKVSetOptions) (bool, error)

    }
    class RetryLayerPostAcknowledgementStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Delete(acknowledgement *model.PostAcknowledgement) error
        + Get(postID string, userID string) (*model.PostAcknowledgement, error)
        + GetForPost(postID string) ([]*model.PostAcknowledgement, error)
        + GetForPosts(postIds []string) ([]*model.PostAcknowledgement, error)
        + Save(postID string, userID string, acknowledgedAt int64) (*model.PostAcknowledgement, error)

    }
    class RetryLayerPostPersistentNotificationStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Delete(postIds []string) error
        + DeleteByChannel(channelIds []string) error
        + DeleteByTeam(teamIds []string) error
        + DeleteExpired(maxSentCount int16) error
        + Get(params model.GetPersistentNotificationsPostsParams) ([]*model.PostPersistentNotifications, error)
        + GetSingle(postID string) (*model.PostPersistentNotifications, error)
        + UpdateLastActivity(postIds []string) error

    }
    class RetryLayerPostPriorityStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + GetForPost(postId string) (*model.PostPriority, error)
        + GetForPosts(ids []string) ([]*model.PostPriority, error)

    }
    class RetryLayerPostStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + AnalyticsPostCount(options *model.PostCountOptions) (int64, error)
        + AnalyticsPostCountsByDay(options *model.AnalyticsPostCountsOptions) (model.AnalyticsRows, error)
        + AnalyticsUserCountsWithPostsByDay(teamID string) (model.AnalyticsRows, error)
        + ClearCaches() 
        + Delete(rctx request.CTX, postID string, timestamp int64, deleteByID string) error
        + Get(ctx context.Context, id string, opts model.GetPostsOptions, userID string, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetDirectPostParentsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.DirectPostForExport, error)
        + GetEditHistoryForPost(postId string) ([]*model.Post, error)
        + GetEtag(channelID string, allowFromCache bool, collapsedThreads bool) string
        + GetFlaggedPosts(userID string, offset int, limit int) (*model.PostList, error)
        + GetFlaggedPostsForChannel(userID string, channelID string, offset int, limit int) (*model.PostList, error)
        + GetFlaggedPostsForTeam(userID string, teamID string, offset int, limit int) (*model.PostList, error)
        + GetMaxPostSize() int
        + GetNthRecentPostTime(n int64) (int64, error)
        + GetOldest() (*model.Post, error)
        + GetOldestEntityCreationTime() (int64, error)
        + GetParentsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.PostForExport, error)
        + GetPostAfterTime(channelID string, timestamp int64, collapsedThreads bool) (*model.Post, error)
        + GetPostIdAfterTime(channelID string, timestamp int64, collapsedThreads bool) (string, error)
        + GetPostIdBeforeTime(channelID string, timestamp int64, collapsedThreads bool) (string, error)
        + GetPostReminderMetadata(postID string) (*store.PostReminderMetadata, error)
        + GetPostReminders(now int64) ([]*model.PostReminder, error)
        + GetPosts(options model.GetPostsOptions, allowFromCache bool, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsAfter(options model.GetPostsOptions, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsBatchForIndexing(startTime int64, startPostID string, limit int) ([]*model.PostForIndexing, error)
        + GetPostsBefore(options model.GetPostsOptions, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsByIds(postIds []string) ([]*model.Post, error)
        + GetPostsByThread(threadID string, since int64) ([]*model.Post, error)
        + GetPostsCreatedAt(channelID string, timestamp int64) ([]*model.Post, error)
        + GetPostsSince(options model.GetPostsSinceOptions, allowFromCache bool, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsSinceForSync(options model.GetPostsSinceForSyncOptions, cursor model.GetPostsSinceForSyncCursor, limit int) ([]*model.Post, model.GetPostsSinceForSyncCursor, error)
        + GetRepliesForExport(parentID string) ([]*model.ReplyForExport, error)
        + GetSingle(id string, inclDeleted bool) (*model.Post, error)
        + HasAutoResponsePostByUserSince(options model.GetPostsSinceOptions, userId string) (bool, error)
        + InvalidateLastPostTimeCache(channelID string) 
        + Overwrite(rctx request.CTX, post *model.Post) (*model.Post, error)
        + OverwriteMultiple(posts []*model.Post) ([]*model.Post, int, error)
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + PermanentDeleteByChannel(rctx request.CTX, channelID string) error
        + PermanentDeleteByUser(rctx request.CTX, userID string) error
        + Save(rctx request.CTX, post *model.Post) (*model.Post, error)
        + SaveMultiple(posts []*model.Post) ([]*model.Post, int, error)
        + Search(teamID string, userID string, params *model.SearchParams) (*model.PostList, error)
        + SearchPostsForUser(rctx request.CTX, paramsList []*model.SearchParams, userID string, teamID string, page int, perPage int) (*model.PostSearchResults, error)
        + SetPostReminder(reminder *model.PostReminder) error
        + Update(rctx request.CTX, newPost *model.Post, oldPost *model.Post) (*model.Post, error)

    }
    class RetryLayerPreferenceStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + CleanupFlagsBatch(limit int64) (int64, error)
        + Delete(userID string, category string, name string) error
        + DeleteCategory(userID string, category string) error
        + DeleteCategoryAndName(category string, name string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + Get(userID string, category string, name string) (*model.Preference, error)
        + GetAll(userID string) (model.Preferences, error)
        + GetCategory(userID string, category string) (model.Preferences, error)
        + GetCategoryAndName(category string, nane string) (model.Preferences, error)
        + PermanentDeleteByUser(userID string) error
        + Save(preferences model.Preferences) error

    }
    class RetryLayerProductNoticesStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Clear(notices []string) error
        + ClearOldNotices(currentNotices model.ProductNotices) error
        + GetViews(userID string) ([]model.ProductNoticeViewState, error)
        + View(userID string, notices []string) error

    }
    class RetryLayerReactionStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + BulkGetForPosts(postIds []string) ([]*model.Reaction, error)
        + Delete(reaction *model.Reaction) (*model.Reaction, error)
        + DeleteAllWithEmojiName(emojiName string) error
        + DeleteOrphanedRowsByIds(r *model.RetentionIdsForDeletion) error
        + ExistsOnPost(postId string, emojiName string) (bool, error)
        + GetForPost(postID string, allowFromCache bool) ([]*model.Reaction, error)
        + GetForPostSince(postId string, since int64, excludeRemoteId string, inclDeleted bool) ([]*model.Reaction, error)
        + GetUniqueCountForPost(postId string) (int, error)
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + PermanentDeleteByUser(userID string) error
        + Save(reaction *model.Reaction) (*model.Reaction, error)

    }
    class RetryLayerRemoteClusterStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Delete(remoteClusterId string) (bool, error)
        + Get(remoteClusterId string) (*model.RemoteCluster, error)
        + GetAll(filter model.RemoteClusterQueryFilter) ([]*model.RemoteCluster, error)
        + GetByPluginID(pluginID string) (*model.RemoteCluster, error)
        + Save(rc *model.RemoteCluster) (*model.RemoteCluster, error)
        + SetLastPingAt(remoteClusterId string) error
        + Update(rc *model.RemoteCluster) (*model.RemoteCluster, error)
        + UpdateTopics(remoteClusterId string, topics string) (*model.RemoteCluster, error)

    }
    class RetryLayerRetentionPolicyStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + AddChannels(policyId string, channelIds []string) error
        + AddTeams(policyId string, teamIds []string) error
        + Delete(id string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + Get(id string) (*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + GetAll(offset int, limit int) ([]*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + GetChannelPoliciesCountForUser(userID string) (int64, error)
        + GetChannelPoliciesForUser(userID string, offset int, limit int) ([]*model.RetentionPolicyForChannel, error)
        + GetChannels(policyId string, offset int, limit int) (model.ChannelListWithTeamData, error)
        + GetChannelsCount(policyId string) (int64, error)
        + GetCount() (int64, error)
        + GetIdsForDeletionByTableName(tableName string, limit int) ([]*model.RetentionIdsForDeletion, error)
        + GetTeamPoliciesCountForUser(userID string) (int64, error)
        + GetTeamPoliciesForUser(userID string, offset int, limit int) ([]*model.RetentionPolicyForTeam, error)
        + GetTeams(policyId string, offset int, limit int) ([]*model.Team, error)
        + GetTeamsCount(policyId string) (int64, error)
        + Patch(patch *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + RemoveChannels(policyId string, channelIds []string) error
        + RemoveTeams(policyId string, teamIds []string) error
        + Save(policy *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, error)

    }
    class RetryLayerRoleStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + AllChannelSchemeRoles() ([]*model.Role, error)
        + ChannelHigherScopedPermissions(roleNames []string) (<font color=blue>map</font>[string]*model.RolePermissions, error)
        + ChannelRolesUnderTeamRole(roleName string) ([]*model.Role, error)
        + Delete(roleID string) (*model.Role, error)
        + Get(roleID string) (*model.Role, error)
        + GetAll() ([]*model.Role, error)
        + GetByName(ctx context.Context, name string) (*model.Role, error)
        + GetByNames(names []string) ([]*model.Role, error)
        + PermanentDeleteAll() error
        + Save(role *model.Role) (*model.Role, error)

    }
    class RetryLayerSchemeStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + CountByScope(scope string) (int64, error)
        + CountWithoutPermission(scope string, permissionID string, roleScope model.RoleScope, roleType model.RoleType) (int64, error)
        + Delete(schemeID string) (*model.Scheme, error)
        + Get(schemeID string) (*model.Scheme, error)
        + GetAllPage(scope string, offset int, limit int) ([]*model.Scheme, error)
        + GetByName(schemeName string) (*model.Scheme, error)
        + PermanentDeleteAll() error
        + Save(scheme *model.Scheme) (*model.Scheme, error)

    }
    class RetryLayerSessionStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + AnalyticsSessionCount() (int64, error)
        + Cleanup(expiryTime int64, batchSize int64) error
        + Get(c request.CTX, sessionIDOrToken string) (*model.Session, error)
        + GetSessions(c request.CTX, userID string) ([]*model.Session, error)
        + GetSessionsExpired(thresholdMillis int64, mobileOnly bool, unnotifiedOnly bool) ([]*model.Session, error)
        + GetSessionsWithActiveDeviceIds(userID string) ([]*model.Session, error)
        + PermanentDeleteSessionsByUser(teamID string) error
        + Remove(sessionIDOrToken string) error
        + RemoveAllSessions() error
        + Save(c request.CTX, session *model.Session) (*model.Session, error)
        + UpdateDeviceId(id string, deviceID string, expiresAt int64) (string, error)
        + UpdateExpiredNotify(sessionid string, notified bool) error
        + UpdateExpiresAt(sessionID string, timestamp int64) error
        + UpdateLastActivityAt(sessionID string, timestamp int64) error
        + UpdateProps(session *model.Session) error
        + UpdateRoles(userID string, roles string) (string, error)

    }
    class RetryLayerSharedChannelStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Delete(channelId string) (bool, error)
        + DeleteRemote(remoteId string) (bool, error)
        + Get(channelId string) (*model.SharedChannel, error)
        + GetAll(offset int, limit int, opts model.SharedChannelFilterOpts) ([]*model.SharedChannel, error)
        + GetAllCount(opts model.SharedChannelFilterOpts) (int64, error)
        + GetAttachment(fileId string, remoteId string) (*model.SharedChannelAttachment, error)
        + GetRemote(id string) (*model.SharedChannelRemote, error)
        + GetRemoteByIds(channelId string, remoteId string) (*model.SharedChannelRemote, error)
        + GetRemoteForUser(remoteId string, userId string) (*model.RemoteCluster, error)
        + GetRemotes(opts model.SharedChannelRemoteFilterOpts) ([]*model.SharedChannelRemote, error)
        + GetRemotesStatus(channelId string) ([]*model.SharedChannelRemoteStatus, error)
        + GetSingleUser(userID string, channelID string, remoteID string) (*model.SharedChannelUser, error)
        + GetUsersForSync(filter model.GetUsersForSyncFilter) ([]*model.User, error)
        + GetUsersForUser(userID string) ([]*model.SharedChannelUser, error)
        + HasChannel(channelID string) (bool, error)
        + HasRemote(channelID string, remoteId string) (bool, error)
        + Save(sc *model.SharedChannel) (*model.SharedChannel, error)
        + SaveAttachment(remote *model.SharedChannelAttachment) (*model.SharedChannelAttachment, error)
        + SaveRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + SaveUser(remote *model.SharedChannelUser) (*model.SharedChannelUser, error)
        + Update(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UpdateAttachmentLastSyncAt(id string, syncTime int64) error
        + UpdateRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + UpdateRemoteCursor(id string, cursor model.GetPostsSinceForSyncCursor) error
        + UpdateUserLastSyncAt(userID string, channelID string, remoteID string) error
        + UpsertAttachment(remote *model.SharedChannelAttachment) (string, error)

    }
    class RetryLayerStatusStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Get(userID string) (*model.Status, error)
        + GetByIds(userIds []string) ([]*model.Status, error)
        + GetTotalActiveUsersCount() (int64, error)
        + ResetAll() error
        + SaveOrUpdate(status *model.Status) error
        + UpdateExpiredDNDStatuses() ([]*model.Status, error)
        + UpdateLastActivityAt(userID string, lastActivityAt int64) error

    }
    class RetryLayerSystemStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Get() (model.StringMap, error)
        + GetByName(name string) (*model.System, error)
        + InsertIfExists(system *model.System) (*model.System, error)
        + PermanentDeleteByName(name string) (*model.System, error)
        + Save(system *model.System) error
        + SaveOrUpdate(system *model.System) error
        + Update(system *model.System) error

    }
    class RetryLayerTeamStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + AnalyticsGetTeamCountForScheme(schemeID string) (int64, error)
        + AnalyticsTeamCount(opts *model.TeamSearch) (int64, error)
        + ClearAllCustomRoleAssignments() error
        + ClearCaches() 
        + Get(id string) (*model.Team, error)
        + GetActiveMemberCount(teamID string, restrictions *model.ViewUsersRestrictions) (int64, error)
        + GetAll() ([]*model.Team, error)
        + GetAllForExportAfter(limit int, afterID string) ([]*model.TeamForExport, error)
        + GetAllPage(offset int, limit int, opts *model.TeamSearch) ([]*model.Team, error)
        + GetAllPrivateTeamListing() ([]*model.Team, error)
        + GetAllTeamListing() ([]*model.Team, error)
        + GetByEmptyInviteID() ([]*model.Team, error)
        + GetByInviteId(inviteID string) (*model.Team, error)
        + GetByName(name string) (*model.Team, error)
        + GetByNames(name []string) ([]*model.Team, error)
        + GetChannelUnreadsForAllTeams(excludeTeamID string, userID string) ([]*model.ChannelUnread, error)
        + GetChannelUnreadsForTeam(teamID string, userID string) ([]*model.ChannelUnread, error)
        + GetCommonTeamIDsForMultipleUsers(userIDs []string) ([]string, error)
        + GetCommonTeamIDsForTwoUsers(userID string, otherUserID string) ([]string, error)
        + GetMany(ids []string) ([]*model.Team, error)
        + GetMember(c request.CTX, teamID string, userID string) (*model.TeamMember, error)
        + GetMembers(teamID string, offset int, limit int, teamMembersGetOptions *model.TeamMembersGetOptions) ([]*model.TeamMember, error)
        + GetMembersByIds(teamID string, userIds []string, restrictions *model.ViewUsersRestrictions) ([]*model.TeamMember, error)
        + GetTeamMembersForExport(userID string) ([]*model.TeamMemberForExport, error)
        + GetTeamsByScheme(schemeID string, offset int, limit int) ([]*model.Team, error)
        + GetTeamsByUserId(userID string) ([]*model.Team, error)
        + GetTeamsForUser(c request.CTX, userID string, excludeTeamID string, includeDeleted bool) ([]*model.TeamMember, error)
        + GetTeamsForUserWithPagination(userID string, page int, perPage int) ([]*model.TeamMember, error)
        + GetTotalMemberCount(teamID string, restrictions *model.ViewUsersRestrictions) (int64, error)
        + GetUserTeamIds(userID string, allowFromCache bool) ([]string, error)
        + GroupSyncedTeamCount() (int64, error)
        + InvalidateAllTeamIdsForUser(userID string) 
        + MigrateTeamMembers(fromTeamID string, fromUserID string) (<font color=blue>map</font>[string]string, error)
        + PermanentDelete(teamID string) error
        + RemoveAllMembersByTeam(teamID string) error
        + RemoveAllMembersByUser(ctx request.CTX, userID string) error
        + RemoveMember(rctx request.CTX, teamID string, userID string) error
        + RemoveMembers(rctx request.CTX, teamID string, userIds []string) error
        + ResetAllTeamSchemes() error
        + Save(team *model.Team) (*model.Team, error)
        + SaveMember(rctx request.CTX, member *model.TeamMember, maxUsersPerTeam int) (*model.TeamMember, error)
        + SaveMultipleMembers(members []*model.TeamMember, maxUsersPerTeam int) ([]*model.TeamMember, error)
        + SearchAll(opts *model.TeamSearch) ([]*model.Team, error)
        + SearchAllPaged(opts *model.TeamSearch) ([]*model.Team, int64, error)
        + SearchOpen(opts *model.TeamSearch) ([]*model.Team, error)
        + SearchPrivate(opts *model.TeamSearch) ([]*model.Team, error)
        + Update(team *model.Team) (*model.Team, error)
        + UpdateLastTeamIconUpdate(teamID string, curTime int64) error
        + UpdateMember(rctx request.CTX, member *model.TeamMember) (*model.TeamMember, error)
        + UpdateMembersRole(teamID string, userIDs []string) error
        + UpdateMultipleMembers(members []*model.TeamMember) ([]*model.TeamMember, error)
        + UserBelongsToTeams(userID string, teamIds []string) (bool, error)

    }
    class RetryLayerTermsOfServiceStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Get(id string, allowFromCache bool) (*model.TermsOfService, error)
        + GetLatest(allowFromCache bool) (*model.TermsOfService, error)
        + Save(termsOfService *model.TermsOfService) (*model.TermsOfService, error)

    }
    class RetryLayerThreadStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + DeleteMembershipForUser(userId string, postID string) error
        + DeleteMembershipsForChannel(userID string, channelID string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + Get(id string) (*model.Thread, error)
        + GetMembershipForUser(userId string, postID string) (*model.ThreadMembership, error)
        + GetMembershipsForUser(userId string, teamID string) ([]*model.ThreadMembership, error)
        + GetTeamsUnreadForUser(userID string, teamIDs []string, includeUrgentMentionCount bool) (<font color=blue>map</font>[string]*model.TeamUnread, error)
        + GetThreadFollowers(threadID string, fetchOnlyActive bool) ([]string, error)
        + GetThreadForUser(threadMembership *model.ThreadMembership, extended bool, postPriorityIsEnabled bool) (*model.ThreadResponse, error)
        + GetThreadUnreadReplyCount(threadMembership *model.ThreadMembership) (int64, error)
        + GetThreadsForUser(userId string, teamID string, opts model.GetUserThreadsOpts) ([]*model.ThreadResponse, error)
        + GetTotalThreads(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadMentions(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadThreads(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadUrgentMentions(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + MaintainMembership(userID string, postID string, opts store.ThreadMembershipOpts) (*model.ThreadMembership, error)
        + MarkAllAsRead(userID string, threadIds []string) error
        + MarkAllAsReadByChannels(userID string, channelIDs []string) error
        + MarkAllAsReadByTeam(userID string, teamID string) error
        + MarkAsRead(userID string, threadID string, timestamp int64) error
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + PermanentDeleteBatchThreadMembershipsForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + UpdateMembership(membership *model.ThreadMembership) (*model.ThreadMembership, error)

    }
    class RetryLayerTokenStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Cleanup(expiryTime int64) 
        + Delete(token string) error
        + GetAllTokensByType(tokenType string) ([]*model.Token, error)
        + GetByToken(token string) (*model.Token, error)
        + RemoveAllTokensByType(tokenType string) error
        + Save(recovery *model.Token) error

    }
    class RetryLayerTrueUpReviewStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + CreateTrueUpReviewStatusRecord(reviewStatus *model.TrueUpReviewStatus) (*model.TrueUpReviewStatus, error)
        + GetTrueUpReviewStatus(dueDate int64) (*model.TrueUpReviewStatus, error)
        + Update(reviewStatus *model.TrueUpReviewStatus) (*model.TrueUpReviewStatus, error)

    }
    class RetryLayerUploadSessionStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Delete(id string) error
        + Get(c request.CTX, id string) (*model.UploadSession, error)
        + GetForUser(userID string) ([]*model.UploadSession, error)
        + Save(session *model.UploadSession) (*model.UploadSession, error)
        + Update(session *model.UploadSession) error

    }
    class RetryLayerUserAccessTokenStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Delete(tokenID string) error
        + DeleteAllForUser(userID string) error
        + Get(tokenID string) (*model.UserAccessToken, error)
        + GetAll(offset int, limit int) ([]*model.UserAccessToken, error)
        + GetByToken(tokenString string) (*model.UserAccessToken, error)
        + GetByUser(userID string, page int, perPage int) ([]*model.UserAccessToken, error)
        + Save(token *model.UserAccessToken) (*model.UserAccessToken, error)
        + Search(term string) ([]*model.UserAccessToken, error)
        + UpdateTokenDisable(tokenID string) error
        + UpdateTokenEnable(tokenID string) error

    }
    class RetryLayerUserStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + AnalyticsActiveCount(timestamp int64, options model.UserCountOptions) (int64, error)
        + AnalyticsActiveCountForPeriod(startTime int64, endTime int64, options model.UserCountOptions) (int64, error)
        + AnalyticsGetExternalUsers(hostDomain string) (bool, error)
        + AnalyticsGetGuestCount() (int64, error)
        + AnalyticsGetInactiveUsersCount() (int64, error)
        + AnalyticsGetSystemAdminCount() (int64, error)
        + AutocompleteUsersInChannel(rctx request.CTX, teamID string, channelID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInChannel, error)
        + ClearAllCustomRoleAssignments() error
        + ClearCaches() 
        + Count(options model.UserCountOptions) (int64, error)
        + DeactivateGuests() ([]string, error)
        + DemoteUserToGuest(userID string) (*model.User, error)
        + Get(ctx context.Context, id string) (*model.User, error)
        + GetAll() ([]*model.User, error)
        + GetAllAfter(limit int, afterID string) ([]*model.User, error)
        + GetAllNotInAuthService(authServices []string) ([]*model.User, error)
        + GetAllProfiles(options *model.UserGetOptions) ([]*model.User, error)
        + GetAllProfilesInChannel(ctx context.Context, channelID string, allowFromCache bool) (<font color=blue>map</font>[string]*model.User, error)
        + GetAllUsingAuthService(authService string) ([]*model.User, error)
        + GetAnyUnreadPostCountForChannel(userID string, channelID string) (int64, error)
        + GetByAuth(authData *string, authService string) (*model.User, error)
        + GetByEmail(email string) (*model.User, error)
        + GetByRemoteID(remoteID string) (*model.User, error)
        + GetByUsername(username string) (*model.User, error)
        + GetChannelGroupUsers(channelID string) ([]*model.User, error)
        + GetEtagForAllProfiles() string
        + GetEtagForProfiles(teamID string) string
        + GetEtagForProfilesNotInTeam(teamID string) string
        + GetForLogin(loginID string, allowSignInWithUsername bool, allowSignInWithEmail bool) (*model.User, error)
        + GetKnownUsers(userID string) ([]string, error)
        + GetMany(ctx context.Context, ids []string) ([]*model.User, error)
        + GetNewUsersForTeam(teamID string, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfileByGroupChannelIdsForUser(userID string, channelIds []string) (<font color=blue>map</font>[string][]*model.User, error)
        + GetProfileByIds(ctx context.Context, userIds []string, options *store.UserGetByIdsOpts, allowFromCache bool) ([]*model.User, error)
        + GetProfiles(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesByUsernames(usernames []string, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfilesInChannel(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesInChannelByAdmin(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesInChannelByStatus(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesNotInChannel(teamID string, channelId string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfilesNotInTeam(teamID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfilesWithoutTeam(options *model.UserGetOptions) ([]*model.User, error)
        + GetRecentlyActiveUsersForTeam(teamID string, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetSystemAdminProfiles() (<font color=blue>map</font>[string]*model.User, error)
        + GetTeamGroupUsers(teamID string) ([]*model.User, error)
        + GetUnreadCount(userID string, isCRTEnabled bool) (int64, error)
        + GetUnreadCountForChannel(userID string, channelID string) (int64, error)
        + GetUserCountForReport(filter *model.UserReportOptions) (int64, error)
        + GetUserReport(filter *model.UserReportOptions) ([]*model.UserReportQuery, error)
        + GetUsersBatchForIndexing(startTime int64, startFileID string, limit int) ([]*model.UserForIndexing, error)
        + GetUsersWithInvalidEmails(page int, perPage int, restrictedDomains string) ([]*model.User, error)
        + InferSystemInstallDate() (int64, error)
        + InsertUsers(users []*model.User) error
        + InvalidateProfileCacheForUser(userID string) 
        + InvalidateProfilesInChannelCache(channelID string) 
        + InvalidateProfilesInChannelCacheByUser(userID string) 
        + IsEmpty(excludeBots bool) (bool, error)
        + PermanentDelete(userID string) error
        + PromoteGuestToUser(userID string) error
        + RefreshPostStatsForUsers() error
        + ResetAuthDataToEmailForUsers(service string, userIDs []string, includeDeleted bool, dryRun bool) (int, error)
        + ResetLastPictureUpdate(userID string) error
        + Save(rctx request.CTX, user *model.User) (*model.User, error)
        + Search(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchInChannel(channelID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInChannel(teamID string, channelID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInTeam(notInTeamID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchWithoutTeam(term string, options *model.UserSearchOptions) ([]*model.User, error)
        + Update(rctx request.CTX, user *model.User, allowRoleUpdate bool) (*model.UserUpdate, error)
        + UpdateAuthData(userID string, service string, authData *string, email string, resetMfa bool) (string, error)
        + UpdateFailedPasswordAttempts(userID string, attempts int) error
        + UpdateLastLogin(userID string, lastLogin int64) error
        + UpdateLastPictureUpdate(userID string) error
        + UpdateMfaActive(userID string, active bool) error
        + UpdateMfaSecret(userID string, secret string) error
        + UpdateNotifyProps(userID string, props <font color=blue>map</font>[string]string) error
        + UpdatePassword(userID string, newPassword string) error
        + UpdateUpdateAt(userID string) (int64, error)
        + VerifyEmail(userID string, email string) (string, error)

    }
    class RetryLayerUserTermsOfServiceStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + Delete(userID string, termsOfServiceId string) error
        + GetByUser(userID string) (*model.UserTermsOfService, error)
        + Save(userTermsOfService *model.UserTermsOfService) (*model.UserTermsOfService, error)

    }
    class RetryLayerWebhookStore << (S,Aquamarine) >> {
        + Root *RetryLayer

        + AnalyticsIncomingCount(teamID string) (int64, error)
        + AnalyticsOutgoingCount(teamID string) (int64, error)
        + ClearCaches() 
        + DeleteIncoming(webhookID string, timestamp int64) error
        + DeleteOutgoing(webhookID string, timestamp int64) error
        + GetIncoming(id string, allowFromCache bool) (*model.IncomingWebhook, error)
        + GetIncomingByChannel(channelID string) ([]*model.IncomingWebhook, error)
        + GetIncomingByTeam(teamID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingByTeamByUser(teamID string, userID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingList(offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingListByUser(userID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetOutgoing(id string) (*model.OutgoingWebhook, error)
        + GetOutgoingByChannel(channelID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByChannelByUser(channelID string, userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByTeam(teamID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByTeamByUser(teamID string, userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingList(offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingListByUser(userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + InvalidateWebhookCache(webhook string) 
        + PermanentDeleteIncomingByChannel(channelID string) error
        + PermanentDeleteIncomingByUser(userID string) error
        + PermanentDeleteOutgoingByChannel(channelID string) error
        + PermanentDeleteOutgoingByUser(userID string) error
        + SaveIncoming(webhook *model.IncomingWebhook) (*model.IncomingWebhook, error)
        + SaveOutgoing(webhook *model.OutgoingWebhook) (*model.OutgoingWebhook, error)
        + UpdateIncoming(webhook *model.IncomingWebhook) (*model.IncomingWebhook, error)
        + UpdateOutgoing(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, error)

    }
}
"store.Store" *-- "retrylayer.RetryLayer"
"store.AuditStore" *-- "retrylayer.RetryLayerAuditStore"
"store.BotStore" *-- "retrylayer.RetryLayerBotStore"
"store.ChannelMemberHistoryStore" *-- "retrylayer.RetryLayerChannelMemberHistoryStore"
"store.ChannelStore" *-- "retrylayer.RetryLayerChannelStore"
"store.ClusterDiscoveryStore" *-- "retrylayer.RetryLayerClusterDiscoveryStore"
"store.CommandStore" *-- "retrylayer.RetryLayerCommandStore"
"store.CommandWebhookStore" *-- "retrylayer.RetryLayerCommandWebhookStore"
"store.ComplianceStore" *-- "retrylayer.RetryLayerComplianceStore"
"store.DesktopTokensStore" *-- "retrylayer.RetryLayerDesktopTokensStore"
"store.DraftStore" *-- "retrylayer.RetryLayerDraftStore"
"store.EmojiStore" *-- "retrylayer.RetryLayerEmojiStore"
"store.FileInfoStore" *-- "retrylayer.RetryLayerFileInfoStore"
"store.GroupStore" *-- "retrylayer.RetryLayerGroupStore"
"store.JobStore" *-- "retrylayer.RetryLayerJobStore"
"store.LicenseStore" *-- "retrylayer.RetryLayerLicenseStore"
"store.LinkMetadataStore" *-- "retrylayer.RetryLayerLinkMetadataStore"
"store.NotifyAdminStore" *-- "retrylayer.RetryLayerNotifyAdminStore"
"store.OAuthStore" *-- "retrylayer.RetryLayerOAuthStore"
"store.OutgoingOAuthConnectionStore" *-- "retrylayer.RetryLayerOutgoingOAuthConnectionStore"
"store.PluginStore" *-- "retrylayer.RetryLayerPluginStore"
"store.PostAcknowledgementStore" *-- "retrylayer.RetryLayerPostAcknowledgementStore"
"store.PostPersistentNotificationStore" *-- "retrylayer.RetryLayerPostPersistentNotificationStore"
"store.PostPriorityStore" *-- "retrylayer.RetryLayerPostPriorityStore"
"store.PostStore" *-- "retrylayer.RetryLayerPostStore"
"store.PreferenceStore" *-- "retrylayer.RetryLayerPreferenceStore"
"store.ProductNoticesStore" *-- "retrylayer.RetryLayerProductNoticesStore"
"store.ReactionStore" *-- "retrylayer.RetryLayerReactionStore"
"store.RemoteClusterStore" *-- "retrylayer.RetryLayerRemoteClusterStore"
"store.RetentionPolicyStore" *-- "retrylayer.RetryLayerRetentionPolicyStore"
"store.RoleStore" *-- "retrylayer.RetryLayerRoleStore"
"store.SchemeStore" *-- "retrylayer.RetryLayerSchemeStore"
"store.SessionStore" *-- "retrylayer.RetryLayerSessionStore"
"store.SharedChannelStore" *-- "retrylayer.RetryLayerSharedChannelStore"
"store.StatusStore" *-- "retrylayer.RetryLayerStatusStore"
"store.SystemStore" *-- "retrylayer.RetryLayerSystemStore"
"store.TeamStore" *-- "retrylayer.RetryLayerTeamStore"
"store.TermsOfServiceStore" *-- "retrylayer.RetryLayerTermsOfServiceStore"
"store.ThreadStore" *-- "retrylayer.RetryLayerThreadStore"
"store.TokenStore" *-- "retrylayer.RetryLayerTokenStore"
"store.TrueUpReviewStore" *-- "retrylayer.RetryLayerTrueUpReviewStore"
"store.UploadSessionStore" *-- "retrylayer.RetryLayerUploadSessionStore"
"store.UserAccessTokenStore" *-- "retrylayer.RetryLayerUserAccessTokenStore"
"store.UserStore" *-- "retrylayer.RetryLayerUserStore"
"store.UserTermsOfServiceStore" *-- "retrylayer.RetryLayerUserTermsOfServiceStore"
"store.WebhookStore" *-- "retrylayer.RetryLayerWebhookStore"

"store.AuditStore" <|-- "retrylayer.RetryLayerAuditStore"
"store.BotStore" <|-- "retrylayer.RetryLayerBotStore"
"store.ChannelMemberHistoryStore" <|-- "retrylayer.RetryLayerChannelMemberHistoryStore"
"store.ChannelStore" <|-- "retrylayer.RetryLayerChannelStore"
"store.ClusterDiscoveryStore" <|-- "retrylayer.RetryLayerClusterDiscoveryStore"
"store.CommandStore" <|-- "retrylayer.RetryLayerCommandStore"
"store.CommandWebhookStore" <|-- "retrylayer.RetryLayerCommandWebhookStore"
"store.ComplianceStore" <|-- "retrylayer.RetryLayerComplianceStore"
"store.DesktopTokensStore" <|-- "retrylayer.RetryLayerDesktopTokensStore"
"store.DraftStore" <|-- "retrylayer.RetryLayerDraftStore"
"store.EmojiStore" <|-- "retrylayer.RetryLayerEmojiStore"
"store.FileInfoStore" <|-- "retrylayer.RetryLayerFileInfoStore"
"store.GroupStore" <|-- "retrylayer.RetryLayerGroupStore"
"store.JobStore" <|-- "retrylayer.RetryLayerJobStore"
"store.LicenseStore" <|-- "retrylayer.RetryLayerLicenseStore"
"store.LinkMetadataStore" <|-- "retrylayer.RetryLayerLinkMetadataStore"
"store.NotifyAdminStore" <|-- "retrylayer.RetryLayerNotifyAdminStore"
"store.OAuthStore" <|-- "retrylayer.RetryLayerOAuthStore"
"store.OutgoingOAuthConnectionStore" <|-- "retrylayer.RetryLayerOutgoingOAuthConnectionStore"
"store.PluginStore" <|-- "retrylayer.RetryLayerPluginStore"
"store.PostAcknowledgementStore" <|-- "retrylayer.RetryLayerPostAcknowledgementStore"
"store.PostPersistentNotificationStore" <|-- "retrylayer.RetryLayerPostPersistentNotificationStore"
"store.PostPriorityStore" <|-- "retrylayer.RetryLayerPostPriorityStore"
"store.PostStore" <|-- "retrylayer.RetryLayerPostStore"
"store.PreferenceStore" <|-- "retrylayer.RetryLayerPreferenceStore"
"store.ProductNoticesStore" <|-- "retrylayer.RetryLayerProductNoticesStore"
"store.ReactionStore" <|-- "retrylayer.RetryLayerReactionStore"
"store.RemoteClusterStore" <|-- "retrylayer.RetryLayerRemoteClusterStore"
"store.RetentionPolicyStore" <|-- "retrylayer.RetryLayerRetentionPolicyStore"
"store.RoleStore" <|-- "retrylayer.RetryLayerRoleStore"
"store.SchemeStore" <|-- "retrylayer.RetryLayerSchemeStore"
"store.SessionStore" <|-- "retrylayer.RetryLayerSessionStore"
"store.SharedChannelStore" <|-- "retrylayer.RetryLayerSharedChannelStore"
"store.StatusStore" <|-- "retrylayer.RetryLayerStatusStore"
"hosted_purchase_screening.ScreenTimeStore" <|-- "retrylayer.RetryLayerSystemStore"
"store.SystemStore" <|-- "retrylayer.RetryLayerSystemStore"
"store.TeamStore" <|-- "retrylayer.RetryLayerTeamStore"
"store.TermsOfServiceStore" <|-- "retrylayer.RetryLayerTermsOfServiceStore"
"store.ThreadStore" <|-- "retrylayer.RetryLayerThreadStore"
"store.TokenStore" <|-- "retrylayer.RetryLayerTokenStore"
"store.TrueUpReviewStore" <|-- "retrylayer.RetryLayerTrueUpReviewStore"
"store.UploadSessionStore" <|-- "retrylayer.RetryLayerUploadSessionStore"
"store.UserAccessTokenStore" <|-- "retrylayer.RetryLayerUserAccessTokenStore"
"store.UserStore" <|-- "retrylayer.RetryLayerUserStore"
"store.UserTermsOfServiceStore" <|-- "retrylayer.RetryLayerUserTermsOfServiceStore"
"store.WebhookStore" <|-- "retrylayer.RetryLayerWebhookStore"

namespace s3_path_migration {
    class S3PathMigrationWorker << (S,Aquamarine) >> {
        + Run() 
        + Stop() 
        + JobChannel() <font color=blue>chan</font> model.Job
        + IsEnabled(_ *model.Config) bool
        + DoJob(job *model.Job) 

    }
}


namespace searchlayer {
    class SearchChannelStore << (S,Aquamarine) >> {
        + Save(rctx request.CTX, channel *model.Channel, maxChannels int64) (*model.Channel, error)
        + Update(rctx request.CTX, channel *model.Channel) (*model.Channel, error)
        + UpdateMember(rctx request.CTX, cm *model.ChannelMember) (*model.ChannelMember, error)
        + SaveMember(rctx request.CTX, cm *model.ChannelMember) (*model.ChannelMember, error)
        + RemoveMember(rctx request.CTX, channelID string, userIdToRemove string) error
        + RemoveMembers(rctx request.CTX, channelID string, userIds []string) error
        + CreateDirectChannel(rctx request.CTX, user *model.User, otherUser *model.User, channelOptions ...model.ChannelOption) (*model.Channel, error)
        + SaveDirectChannel(rctx request.CTX, directchannel *model.Channel, member1 *model.ChannelMember, member2 *model.ChannelMember) (*model.Channel, error)
        + Autocomplete(rctx request.CTX, userID string, term string, includeDeleted bool, isGuest bool) (model.ChannelListWithTeamData, error)
        + AutocompleteInTeam(rctx request.CTX, teamID string, userID string, term string, includeDeleted bool, isGuest bool) (model.ChannelList, error)
        + PermanentDeleteMembersByUser(rctx request.CTX, userId string) error
        + RemoveAllDeactivatedMembers(rctx request.CTX, channelId string) error
        + PermanentDeleteMembersByChannel(rctx request.CTX, channelId string) error
        + PermanentDelete(rctx request.CTX, channelId string) error

    }
    class SearchFileInfoStore << (S,Aquamarine) >> {
        + Save(rctx request.CTX, info *model.FileInfo) (*model.FileInfo, error)
        + SetContent(rctx request.CTX, fileID string, content string) error
        + AttachToPost(rctx request.CTX, fileId string, postId string, channelId string, creatorId string) error
        + DeleteForPost(rctx request.CTX, postId string) (string, error)
        + PermanentDelete(rctx request.CTX, fileId string) error
        + PermanentDeleteBatch(rctx request.CTX, endTime int64, limit int64) (int64, error)
        + PermanentDeleteByUser(rctx request.CTX, userId string) (int64, error)
        + Search(rctx request.CTX, paramsList []*model.SearchParams, userId string, teamId string, page int, perPage int) (*model.FileInfoList, error)

    }
    class SearchPostStore << (S,Aquamarine) >> {
        + Update(rctx request.CTX, newPost *model.Post, oldPost *model.Post) (*model.Post, error)
        + Overwrite(rctx request.CTX, post *model.Post) (*model.Post, error)
        + Save(rctx request.CTX, post *model.Post) (*model.Post, error)
        + Delete(rctx request.CTX, postId string, date int64, deletedByID string) error
        + PermanentDeleteByUser(rctx request.CTX, userID string) error
        + PermanentDeleteByChannel(rctx request.CTX, channelID string) error
        + SearchPostsForUser(rctx request.CTX, paramsList []*model.SearchParams, userId string, teamId string, page int, perPage int) (*model.PostSearchResults, error)

    }
    class SearchStore << (S,Aquamarine) >> {
        + UpdateConfig(cfg *model.Config) 
        + Channel() store.ChannelStore
        + Post() store.PostStore
        + FileInfo() store.FileInfoStore
        + Team() store.TeamStore
        + User() store.UserStore

    }
    class SearchTeamStore << (S,Aquamarine) >> {
        + SaveMember(rctx request.CTX, teamMember *model.TeamMember, maxUsersPerTeam int) (*model.TeamMember, error)
        + UpdateMember(rctx request.CTX, teamMember *model.TeamMember) (*model.TeamMember, error)
        + RemoveMember(rctx request.CTX, teamId string, userId string) error
        + RemoveAllMembersByUser(rctx request.CTX, userId string) error

    }
    class SearchUserStore << (S,Aquamarine) >> {
        + Search(rctx request.CTX, teamId string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + Update(rctx request.CTX, user *model.User, trustedUpdateData bool) (*model.UserUpdate, error)
        + Save(rctx request.CTX, user *model.User) (*model.User, error)
        + PermanentDelete(userId string) error
        + AutocompleteUsersInChannel(rctx request.CTX, teamId string, channelId string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInChannel, error)

    }
}
"store.ChannelStore" *-- "searchlayer.SearchChannelStore"
"store.FileInfoStore" *-- "searchlayer.SearchFileInfoStore"
"store.PostStore" *-- "searchlayer.SearchPostStore"
"store.Store" *-- "searchlayer.SearchStore"
"store.TeamStore" *-- "searchlayer.SearchTeamStore"
"store.UserStore" *-- "searchlayer.SearchUserStore"


namespace searchtest {
    class ByChannelDisplayName << (S,Aquamarine) >> {
        + Len() int
        + Swap(i int, j int) 
        + Less(i int, j int) bool

    }
    class SearchTestEngine << (S,Aquamarine) >> {
        + Driver string
        + BeforeTest <font color=blue>func</font>(*testing.T, store.Store) 
        + AfterTest <font color=blue>func</font>(*testing.T, store.Store) 

    }
    class SearchTestHelper << (S,Aquamarine) >> {
        + Context *request.Context
        + Store store.Store
        + Team *model.Team
        + AnotherTeam *model.Team
        + User *model.User
        + User2 *model.User
        + UserAnotherTeam *model.User
        + ChannelBasic *model.Channel
        + ChannelPrivate *model.Channel
        + ChannelAnotherTeam *model.Channel
        + ChannelDeleted *model.Channel

        + SetupBasicFixtures() error
        + CleanFixtures() error

    }
    class searchTest << (S,Aquamarine) >> {
        + Name string
        + Fn <font color=blue>func</font>(*testing.T, *SearchTestHelper) 
        + Tags []string
        + Skip bool
        + SkipMessage string

    }
    class searchtest.ByChannelDisplayName << (T, #FF7700) >>  {
    }
    class "model.ChannelList" as modelChannelList {
        'This class was created so that we can correctly have an alias pointing to this name. Since it contains dots that can break namespaces
    }
}


namespace slashcommands {
    class AutoChannelCreator << (S,Aquamarine) >> {
        + Fuzzy bool
        + DisplayNameLen utils.Range
        + DisplayNameCharset string
        + NameLen utils.Range
        + NameCharset string
        + ChannelType model.ChannelType
        + CreateTime int64

        + CreateTestChannels(c request.CTX, num utils.Range) ([]*model.Channel, error)

    }
    class AutoPostCreator << (S,Aquamarine) >> {
        + Fuzzy bool
        + TextLength utils.Range
        + HasImage bool
        + ImageFilenames []string
        + Users []string
        + UsersToPostFrom []string
        + Mentions utils.Range
        + Tags utils.Range
        + CreateTime int64

        + UploadTestFile(c request.CTX) ([]string, error)
        + CreateRandomPost(c request.CTX) (*model.Post, error)
        + CreateRandomPostNested(c request.CTX, rootID string) (*model.Post, error)

    }
    class AutoTeamCreator << (S,Aquamarine) >> {
        + Fuzzy bool
        + NameLength utils.Range
        + NameCharset string
        + DomainLength utils.Range
        + DomainCharset string
        + EmailLength utils.Range
        + EmailCharset string

        + CreateTestTeams(num utils.Range) ([]*model.Team, error)

    }
    class AutoUserCreator << (S,Aquamarine) >> {
        + EmailLength utils.Range
        + EmailCharset string
        + NameLength utils.Range
        + NameCharset string
        + Fuzzy bool
        + JoinTime int64

        + CreateTestUsers(c request.CTX, num utils.Range) ([]*model.User, error)

    }
    class AwayProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, _ request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class CodeProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class CollapseProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class CustomStatusProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class DndProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class EchoProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class ExpandProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class ExportLinkProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class HeaderProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class HelpProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class InvitePeopleProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class InviteProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class JoinProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class KickProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class LeaveProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class LoadTestProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse
        + HelpCommand(args *model.CommandArgs, message string) *model.CommandResponse
        + SetupCommand(a *app.App, rctx request.CTX, args *model.CommandArgs, message string) (*model.CommandResponse, error)
        + ActivateUserCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) (*model.CommandResponse, error)
        + DeActivateUserCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) (*model.CommandResponse, error)
        + UsersCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) (*model.CommandResponse, error)
        + ChannelsCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) (*model.CommandResponse, error)
        + DMsCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) (*model.CommandResponse, error)
        + ThreadedPostCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) (*model.CommandResponse, error)
        + PostsCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) (*model.CommandResponse, error)
        + PostCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) (*model.CommandResponse, error)
        + URLCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) (*model.CommandResponse, error)
        + JSONCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) (*model.CommandResponse, error)

    }
    class LogoutProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, _ request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class MarketplaceProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class MeProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class MuteProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class OfflineProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class OnlineProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class OpenProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command

    }
    class PurposeProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class RemoteProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse
        + GetAutoCompleteListItems(c request.CTX, a *app.App, commandArgs *model.CommandArgs, arg *model.AutocompleteArg, parsed string, toBeParsed string) ([]model.AutocompleteListItem, error)

    }
    class RemoveProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class RenameProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class SearchProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class SettingsProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class ShareProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + GetAutoCompleteListItems(c request.CTX, a *app.App, commandArgs *model.CommandArgs, arg *model.AutocompleteArg, parsed string, toBeParsed string) ([]model.AutocompleteListItem, error)
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class ShortcutsProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class ShrugProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class TeamEnvironment << (S,Aquamarine) >> {
        + Users []*model.User
        + Channels []*model.Channel

    }
    class TestEnvironment << (S,Aquamarine) >> {
        + Teams []*model.Team
        + Environments []TeamEnvironment

    }
    class groupmsgProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class msgProvider << (S,Aquamarine) >> {
        + GetTrigger() string
        + GetCommand(a *app.App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *app.App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class slashcommands.UserError << (T, #FF7700) >>  {
    }
}
"slashcommands.JoinProvider" *-- "slashcommands.OpenProvider"

"app.CommandProvider" <|-- "slashcommands.AwayProvider"
"app.CommandProvider" <|-- "slashcommands.CodeProvider"
"app.CommandProvider" <|-- "slashcommands.CollapseProvider"
"app.CommandProvider" <|-- "slashcommands.CustomStatusProvider"
"app.CommandProvider" <|-- "slashcommands.DndProvider"
"app.CommandProvider" <|-- "slashcommands.EchoProvider"
"app.CommandProvider" <|-- "slashcommands.ExpandProvider"
"app.CommandProvider" <|-- "slashcommands.ExportLinkProvider"
"app.CommandProvider" <|-- "slashcommands.HeaderProvider"
"app.CommandProvider" <|-- "slashcommands.HelpProvider"
"app.CommandProvider" <|-- "slashcommands.InvitePeopleProvider"
"app.CommandProvider" <|-- "slashcommands.InviteProvider"
"app.CommandProvider" <|-- "slashcommands.JoinProvider"
"app.CommandProvider" <|-- "slashcommands.KickProvider"
"app.CommandProvider" <|-- "slashcommands.LeaveProvider"
"app.CommandProvider" <|-- "slashcommands.LoadTestProvider"
"app.CommandProvider" <|-- "slashcommands.LogoutProvider"
"app.CommandProvider" <|-- "slashcommands.MarketplaceProvider"
"app.CommandProvider" <|-- "slashcommands.MeProvider"
"app.CommandProvider" <|-- "slashcommands.MuteProvider"
"app.CommandProvider" <|-- "slashcommands.OfflineProvider"
"app.CommandProvider" <|-- "slashcommands.OnlineProvider"
"app.CommandProvider" <|-- "slashcommands.PurposeProvider"
"app.AutocompleteDynamicArgProvider" <|-- "slashcommands.RemoteProvider"
"app.CommandProvider" <|-- "slashcommands.RemoteProvider"
"app.CommandProvider" <|-- "slashcommands.RemoveProvider"
"app.CommandProvider" <|-- "slashcommands.RenameProvider"
"app.CommandProvider" <|-- "slashcommands.SearchProvider"
"app.CommandProvider" <|-- "slashcommands.SettingsProvider"
"app.AutocompleteDynamicArgProvider" <|-- "slashcommands.ShareProvider"
"app.CommandProvider" <|-- "slashcommands.ShareProvider"
"app.CommandProvider" <|-- "slashcommands.ShortcutsProvider"
"app.CommandProvider" <|-- "slashcommands.ShrugProvider"
"app.CommandProvider" <|-- "slashcommands.groupmsgProvider"
"app.CommandProvider" <|-- "slashcommands.msgProvider"

namespace sqlstore {
    interface Builder  {
        + ToSql() (string, []any, error)

    }
    interface JSONSerializable  {
        + ToJSON() string

    }
    class JoinedThread << (S,Aquamarine) >> {
        + PostId string
        + ReplyCount int64
        + LastReplyAt int64
        + LastViewedAt int64
        + UnreadReplies int64
        + UnreadMentions int64
        + Participants model.StringArray
        + ThreadDeleteAt int64
        + TeamId string
        + IsUrgent bool

    }
    class Migrator << (S,Aquamarine) >> {
        + Close() error
        + GetFileName(plan *models.Plan) (string, error)
        + GeneratePlan(recover bool) (*models.Plan, error)
        + MigrateWithPlan(plan *models.Plan, dryRun bool) error
        + DowngradeMigrations(dryRun bool, versions ...string) error

    }
    class RetentionPolicyBatchDeletionInfo << (S,Aquamarine) >> {
        + BaseBuilder squirrel.SelectBuilder
        + Table string
        + TimeColumn string
        + PrimaryKeys []string
        + ChannelIDTable string
        + NowMillis int64
        + GlobalPolicyEndTime int64
        + Limit int64
        + StoreDeletedIds bool

    }
    class Role << (S,Aquamarine) >> {
        + Id string
        + Name string
        + DisplayName string
        + Description string
        + CreateAt int64
        + UpdateAt int64
        + DeleteAt int64
        + Permissions string
        + SchemeManaged bool
        + BuiltIn bool

        + ToModel() *model.Role

    }
    class SqlAuditStore << (S,Aquamarine) >> {
        + Save(audit *model.Audit) error
        + Get(userId string, offset int, limit int) (model.Audits, error)
        + PermanentDeleteByUser(userId string) error

    }
    class SqlBotStore << (S,Aquamarine) >> {
        + Get(botUserId string, includeDeleted bool) (*model.Bot, error)
        + GetAll(options *model.BotGetOptions) ([]*model.Bot, error)
        + Save(bot *model.Bot) (*model.Bot, error)
        + Update(bot *model.Bot) (*model.Bot, error)
        + PermanentDelete(botUserId string) error

    }
    class SqlChannelMemberHistoryStore << (S,Aquamarine) >> {
        + LogJoinEvent(userId string, channelId string, joinTime int64) error
        + LogLeaveEvent(userId string, channelId string, leaveTime int64) error
        + GetUsersInChannelDuring(startTime int64, endTime int64, channelId string) ([]*model.ChannelMemberHistoryResult, error)
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + DeleteOrphanedRows(limit int) (int64, error)
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + GetChannelsLeftSince(userID string, since int64) ([]string, error)

    }
    class SqlChannelStore << (S,Aquamarine) >> {
        + ClearMembersForUserCache() 
        + ClearCaches() 
        + Save(rctx request.CTX, channel *model.Channel, maxChannelsPerTeam int64) (*model.Channel, error)
        + CreateDirectChannel(rctx request.CTX, user *model.User, otherUser *model.User, channelOptions ...model.ChannelOption) (*model.Channel, error)
        + SaveDirectChannel(rctx request.CTX, directChannel *model.Channel, member1 *model.ChannelMember, member2 *model.ChannelMember) (*model.Channel, error)
        + Update(rctx request.CTX, channel *model.Channel) (*model.Channel, error)
        + GetChannelUnread(channelId string, userId string) (*model.ChannelUnread, error)
        + InvalidateChannel(id string) 
        + InvalidateChannelByName(teamId string, name string) 
        + GetPinnedPosts(channelId string) (*model.PostList, error)
        + Get(id string, allowFromCache bool) (*model.Channel, error)
        + GetMany(ids []string, allowFromCache bool) (model.ChannelList, error)
        + Delete(channelId string, time int64) error
        + Restore(channelId string, time int64) error
        + SetDeleteAt(channelId string, deleteAt int64, updateAt int64) error
        + PermanentDeleteByTeam(teamId string) error
        + PermanentDelete(rctx request.CTX, channelId string) error
        + PermanentDeleteMembersByChannel(rctx request.CTX, channelId string) error
        + GetChannels(teamId string, userId string, opts *model.ChannelSearchOpts) (model.ChannelList, error)
        + GetChannelsByUser(userId string, includeDeleted bool, lastDeleteAt int, pageSize int, fromChannelID string) (model.ChannelList, error)
        + GetAllChannelMemberIdsByChannelId(channelID string) ([]string, error)
        + GetAllChannels(offset int, limit int, opts store.ChannelSearchOpts) (model.ChannelListWithTeamData, error)
        + GetAllChannelsCount(opts store.ChannelSearchOpts) (int64, error)
        + GetMoreChannels(teamId string, userId string, offset int, limit int) (model.ChannelList, error)
        + GetPrivateChannelsForTeam(teamId string, offset int, limit int) (model.ChannelList, error)
        + GetPublicChannelsForTeam(teamId string, offset int, limit int) (model.ChannelList, error)
        + GetPublicChannelsByIdsForTeam(teamId string, channelIds []string) (model.ChannelList, error)
        + GetChannelCounts(teamId string, userId string) (*model.ChannelCounts, error)
        + GetTeamChannels(teamId string) (model.ChannelList, error)
        + GetByNamesIncludeDeleted(teamId string, names []string, allowFromCache bool) ([]*model.Channel, error)
        + GetByNames(teamId string, names []string, allowFromCache bool) ([]*model.Channel, error)
        + GetByNameIncludeDeleted(teamId string, name string, allowFromCache bool) (*model.Channel, error)
        + GetByName(teamId string, name string, allowFromCache bool) (*model.Channel, error)
        + GetDeletedByName(teamId string, name string) (*model.Channel, error)
        + GetDeleted(teamId string, offset int, limit int, userId string) (model.ChannelList, error)
        + SaveMultipleMembers(members []*model.ChannelMember) ([]*model.ChannelMember, error)
        + SaveMember(rctx request.CTX, member *model.ChannelMember) (*model.ChannelMember, error)
        + UpdateMultipleMembers(members []*model.ChannelMember) ([]*model.ChannelMember, error)
        + UpdateMember(rctx request.CTX, member *model.ChannelMember) (*model.ChannelMember, error)
        + UpdateMemberNotifyProps(channelID string, userID string, props <font color=blue>map</font>[string]string) (*model.ChannelMember, error)
        + PatchMultipleMembersNotifyProps(members []*model.ChannelMemberIdentifier, notifyProps <font color=blue>map</font>[string]string) ([]*model.ChannelMember, error)
        + GetMembers(channelID string, offset int, limit int) (model.ChannelMembers, error)
        + GetChannelMembersTimezones(channelId string) ([]model.StringMap, error)
        + GetChannelsWithUnreadsAndWithMentions(ctx context.Context, channelIDs []string, userID string, userNotifyProps model.StringMap) ([]string, []string, <font color=blue>map</font>[string]int64, error)
        + GetMember(ctx context.Context, channelID string, userID string) (*model.ChannelMember, error)
        + GetMemberLastViewedAt(ctx context.Context, channelID string, userID string) (int64, error)
        + InvalidateAllChannelMembersForUser(userId string) 
        + GetMemberForPost(postId string, userId string, includeArchivedChannels bool) (*model.ChannelMember, error)
        + GetAllChannelMembersForUser(userId string, allowFromCache bool, includeDeleted bool) (<font color=blue>map</font>[string]string, error)
        + GetChannelsMemberCount(channelIDs []string) (<font color=blue>map</font>[string]int64, error)
        + InvalidateCacheForChannelMembersNotifyProps(channelId string) 
        + GetAllChannelMembersNotifyPropsForChannel(channelId string, allowFromCache bool) (<font color=blue>map</font>[string]model.StringMap, error)
        + InvalidateMemberCount(channelId string) 
        + GetMemberCountFromCache(channelId string) int64
        + GetFileCount(channelId string) (int64, error)
        + GetMemberCount(channelId string, allowFromCache bool) (int64, error)
        + GetMemberCountsByGroup(ctx context.Context, channelID string, includeTimezones bool) ([]*model.ChannelMemberCountByGroup, error)
        + InvalidatePinnedPostCount(channelId string) 
        + GetPinnedPostCount(channelId string, allowFromCache bool) (int64, error)
        + InvalidateGuestCount(channelId string) 
        + GetGuestCount(channelId string, allowFromCache bool) (int64, error)
        + RemoveMembers(rctx request.CTX, channelId string, userIds []string) error
        + RemoveMember(rctx request.CTX, channelId string, userId string) error
        + RemoveAllDeactivatedMembers(rctx request.CTX, channelId string) error
        + PermanentDeleteMembersByUser(rctx request.CTX, userId string) error
        + UpdateLastViewedAt(channelIds []string, userId string) (<font color=blue>map</font>[string]int64, error)
        + CountUrgentPostsAfter(channelId string, timestamp int64, excludedUserID string) (int, error)
        + CountPostsAfter(channelId string, timestamp int64, excludedUserID string) (int, int, error)
        + UpdateLastViewedAtPost(unreadPost *model.Post, userID string, mentionCount int, mentionCountRoot int, urgentMentionCount int, setUnreadCountRoot bool) (*model.ChannelUnreadAt, error)
        + IncrementMentionCount(channelId string, userIDs []string, isRoot bool, isUrgent bool) error
        + GetAll(teamId string) ([]*model.Channel, error)
        + GetChannelsByIds(channelIds []string, includeDeleted bool) ([]*model.Channel, error)
        + GetChannelsWithTeamDataByIds(channelIDs []string, includeDeleted bool) ([]*model.ChannelWithTeamData, error)
        + GetForPost(postId string) (*model.Channel, error)
        + AnalyticsTypeCount(teamId string, channelType model.ChannelType) (int64, error)
        + AnalyticsDeletedTypeCount(teamId string, channelType model.ChannelType) (int64, error)
        + GetMembersForUser(teamID string, userID string) (model.ChannelMembers, error)
        + GetMembersForUserWithPagination(userId string, page int, perPage int) (model.ChannelMembersWithTeamData, error)
        + GetTeamMembersForChannel(channelID string) ([]string, error)
        + Autocomplete(rctx request.CTX, userID string, term string, includeDeleted bool, isGuest bool) (model.ChannelListWithTeamData, error)
        + AutocompleteInTeam(rctx request.CTX, teamID string, userID string, term string, includeDeleted bool, isGuest bool) (model.ChannelList, error)
        + AutocompleteInTeamForSearch(teamID string, userID string, term string, includeDeleted bool) (model.ChannelList, error)
        + SearchInTeam(teamId string, term string, includeDeleted bool) (model.ChannelList, error)
        + SearchArchivedInTeam(teamId string, term string, userId string) (model.ChannelList, error)
        + SearchForUserInTeam(userId string, teamId string, term string, includeDeleted bool) (model.ChannelList, error)
        + SearchAllChannels(term string, opts store.ChannelSearchOpts) (model.ChannelListWithTeamData, int64, error)
        + SearchMore(userId string, teamId string, term string) (model.ChannelList, error)
        + SearchGroupChannels(userId string, term string) (model.ChannelList, error)
        + GetMembersByIds(channelID string, userIDs []string) (model.ChannelMembers, error)
        + GetMembersByChannelIds(channelIDs []string, userID string) (model.ChannelMembers, error)
        + GetMembersInfoByChannelIds(channelIDs []string) (<font color=blue>map</font>[string][]*model.User, error)
        + GetChannelsByScheme(schemeId string, offset int, limit int) (model.ChannelList, error)
        + MigrateChannelMembers(fromChannelId string, fromUserId string) (<font color=blue>map</font>[string]string, error)
        + ResetAllChannelSchemes() error
        + ClearAllCustomRoleAssignments() error
        + GetAllChannelsForExportAfter(limit int, afterId string) ([]*model.ChannelForExport, error)
        + GetChannelMembersForExport(userId string, teamId string, includeArchivedChannel bool) ([]*model.ChannelMemberForExport, error)
        + GetAllDirectChannelsForExportAfter(limit int, afterId string, includeArchivedChannels bool) ([]*model.DirectChannelForExport, error)
        + GetChannelsBatchForIndexing(startTime int64, startChannelID string, limit int) ([]*model.Channel, error)
        + UserBelongsToChannels(userId string, channelIds []string) (bool, error)
        + UpdateMembersRole(channelID string, userIDs []string) error
        + GroupSyncedChannelCount() (int64, error)
        + SetShared(channelId string, shared bool) error
        + GetTeamForChannel(channelID string) (*model.Team, error)
        + CreateInitialSidebarCategories(c request.CTX, userId string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, error)
        + MigrateFavoritesToSidebarChannels(lastUserId string, runningOrder int64) (<font color=blue>map</font>[string]any, error)
        + CreateSidebarCategory(userId string, teamId string, newCategory *model.SidebarCategoryWithChannels) (*model.SidebarCategoryWithChannels, error)
        + GetSidebarCategory(categoryId string) (*model.SidebarCategoryWithChannels, error)
        + GetSidebarCategoriesForTeamForUser(userId string, teamId string) (*model.OrderedSidebarCategories, error)
        + GetSidebarCategories(userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, error)
        + GetSidebarCategoryOrder(userId string, teamId string) ([]string, error)
        + UpdateSidebarCategoryOrder(userId string, teamId string, categoryOrder []string) error
        + UpdateSidebarCategories(userId string, teamId string, categories []*model.SidebarCategoryWithChannels) ([]*model.SidebarCategoryWithChannels, []*model.SidebarCategoryWithChannels, error)
        + UpdateSidebarChannelsByPreferences(preferences model.Preferences) error
        + DeleteSidebarChannelsByPreferences(preferences model.Preferences) error
        + UpdateSidebarChannelCategoryOnMove(channel *model.Channel, newTeamId string) error
        + ClearSidebarOnTeamLeave(userId string, teamId string) error
        + DeleteSidebarCategory(categoryId string) error
        + DeleteAllSidebarChannelForChannel(channelID string) error

    }
    class SqlCommandStore << (S,Aquamarine) >> {
        + Save(command *model.Command) (*model.Command, error)
        + Get(id string) (*model.Command, error)
        + GetByTeam(teamId string) ([]*model.Command, error)
        + GetByTrigger(teamId string, trigger string) (*model.Command, error)
        + Delete(commandId string, time int64) error
        + PermanentDeleteByTeam(teamId string) error
        + PermanentDeleteByUser(userId string) error
        + Update(cmd *model.Command) (*model.Command, error)
        + AnalyticsCommandCount(teamId string) (int64, error)

    }
    class SqlCommandWebhookStore << (S,Aquamarine) >> {
        + Save(webhook *model.CommandWebhook) (*model.CommandWebhook, error)
        + Get(id string) (*model.CommandWebhook, error)
        + TryUse(id string, limit int) error
        + Cleanup() 

    }
    class SqlComplianceStore << (S,Aquamarine) >> {
        + Save(compliance *model.Compliance) (*model.Compliance, error)
        + Update(compliance *model.Compliance) (*model.Compliance, error)
        + GetAll(offset int, limit int) (model.Compliances, error)
        + Get(id string) (*model.Compliance, error)
        + ComplianceExport(job *model.Compliance, cursor model.ComplianceExportCursor, limit int) ([]*model.CompliancePost, model.ComplianceExportCursor, error)
        + MessageExport(c request.CTX, cursor model.MessageExportCursor, limit int) ([]*model.MessageExport, model.MessageExportCursor, error)

    }
    class SqlDesktopTokensStore << (S,Aquamarine) >> {
        + GetUserId(token string, minCreateAt int64) (*string, error)
        + Insert(token string, createAt int64, userId string) error
        + Delete(token string) error
        + DeleteByUserId(userId string) error
        + DeleteOlderThan(minCreateAt int64) error

    }
    class SqlDraftStore << (S,Aquamarine) >> {
        + Get(userId string, channelId string, rootId string, includeDeleted bool) (*model.Draft, error)
        + Upsert(draft *model.Draft) (*model.Draft, error)
        + GetDraftsForUser(userID string, teamID string) ([]*model.Draft, error)
        + Delete(userID string, channelID string, rootID string) error
        + DeleteDraftsAssociatedWithPost(channelID string, rootID string) error
        + GetMaxDraftSize() int
        + GetLastCreateAtAndUserIdValuesForEmptyDraftsMigration(createAt int64, userId string) (int64, string, error)
        + DeleteEmptyDraftsByCreateAtAndUserId(createAt int64, userId string) error
        + DeleteOrphanDraftsByCreateAtAndUserId(createAt int64, userId string) error

    }
    class SqlEmojiStore << (S,Aquamarine) >> {
        + Save(emoji *model.Emoji) (*model.Emoji, error)
        + Get(c request.CTX, id string, allowFromCache bool) (*model.Emoji, error)
        + GetByName(c request.CTX, name string, allowFromCache bool) (*model.Emoji, error)
        + GetMultipleByName(c request.CTX, names []string) ([]*model.Emoji, error)
        + GetList(offset int, limit int, sort string) ([]*model.Emoji, error)
        + Delete(emoji *model.Emoji, time int64) error
        + Search(name string, prefixOnly bool, limit int) ([]*model.Emoji, error)

    }
    class SqlFileInfoStore << (S,Aquamarine) >> {
        + ClearCaches() 
        + Save(rctx request.CTX, info *model.FileInfo) (*model.FileInfo, error)
        + GetByIds(ids []string) ([]*model.FileInfo, error)
        + Upsert(rctx request.CTX, info *model.FileInfo) (*model.FileInfo, error)
        + Get(id string) (*model.FileInfo, error)
        + GetFromMaster(id string) (*model.FileInfo, error)
        + GetWithOptions(page int, perPage int, opt *model.GetFileInfosOptions) ([]*model.FileInfo, error)
        + GetByPath(path string) (*model.FileInfo, error)
        + InvalidateFileInfosForPostCache(postId string, deleted bool) 
        + GetForPost(postId string, readFromMaster bool, includeDeleted bool, allowFromCache bool) ([]*model.FileInfo, error)
        + GetForUser(userId string) ([]*model.FileInfo, error)
        + AttachToPost(rctx request.CTX, fileId string, postId string, channelId string, creatorId string) error
        + SetContent(rctx request.CTX, fileId string, content string) error
        + DeleteForPost(rctx request.CTX, postId string) (string, error)
        + PermanentDelete(rctx request.CTX, fileId string) error
        + PermanentDeleteBatch(rctx request.CTX, endTime int64, limit int64) (int64, error)
        + PermanentDeleteByUser(rctx request.CTX, userId string) (int64, error)
        + Search(rctx request.CTX, paramsList []*model.SearchParams, userId string, teamId string, page int, perPage int) (*model.FileInfoList, error)
        + CountAll() (int64, error)
        + GetFilesBatchForIndexing(startTime int64, startFileID string, includeDeleted bool, limit int) ([]*model.FileForIndexing, error)
        + GetStorageUsage(allowFromCache bool, includeDeleted bool) (int64, error)
        + GetUptoNSizeFileTime(n int64) (int64, error)

    }
    class SqlGroupStore << (S,Aquamarine) >> {
        + Create(group *model.Group) (*model.Group, error)
        + CreateWithUserIds(g *model.GroupWithUserIds) (*model.Group, error)
        + Get(groupId string) (*model.Group, error)
        + GetByName(name string, opts model.GroupSearchOpts) (*model.Group, error)
        + GetByIDs(groupIDs []string) ([]*model.Group, error)
        + GetByRemoteID(remoteID string, groupSource model.GroupSource) (*model.Group, error)
        + GetAllBySource(groupSource model.GroupSource) ([]*model.Group, error)
        + GetByUser(userId string) ([]*model.Group, error)
        + Update(group *model.Group) (*model.Group, error)
        + Delete(groupID string) (*model.Group, error)
        + Restore(groupID string) (*model.Group, error)
        + GetMember(groupID string, userID string) (*model.GroupMember, error)
        + GetMemberUsers(groupID string) ([]*model.User, error)
        + GetMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetMemberUsersSortedPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions, teammateNameDisplay string) ([]*model.User, error)
        + GetNonMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetMemberCount(groupID string) (int64, error)
        + GetMemberCountWithRestrictions(groupID string, viewRestrictions *model.ViewUsersRestrictions) (int64, error)
        + GetMemberUsersInTeam(groupID string, teamID string) ([]*model.User, error)
        + GetMemberUsersNotInChannel(groupID string, channelID string) ([]*model.User, error)
        + UpsertMember(groupID string, userID string) (*model.GroupMember, error)
        + DeleteMember(groupID string, userID string) (*model.GroupMember, error)
        + PermanentDeleteMembersByUser(userId string) error
        + CreateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, error)
        + GetGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, error)
        + GetAllGroupSyncablesByGroupId(groupID string, syncableType model.GroupSyncableType) ([]*model.GroupSyncable, error)
        + UpdateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, error)
        + DeleteGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, error)
        + TeamMembersToAdd(since int64, teamID *string, includeRemovedMembers bool) ([]*model.UserTeamIDPair, error)
        + ChannelMembersToAdd(since int64, channelID *string, includeRemovedMembers bool) ([]*model.UserChannelIDPair, error)
        + TeamMembersToRemove(teamID *string) ([]*model.TeamMember, error)
        + CountGroupsByChannel(channelId string, opts model.GroupSearchOpts) (int64, error)
        + GetGroupsByChannel(channelId string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, error)
        + ChannelMembersToRemove(channelID *string) ([]*model.ChannelMember, error)
        + CountGroupsByTeam(teamId string, opts model.GroupSearchOpts) (int64, error)
        + GetGroupsByTeam(teamId string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, error)
        + GetGroupsAssociatedToChannelsByTeam(teamId string, opts model.GroupSearchOpts) (<font color=blue>map</font>[string][]*model.GroupWithSchemeAdmin, error)
        + GetGroups(page int, perPage int, opts model.GroupSearchOpts, viewRestrictions *model.ViewUsersRestrictions) ([]*model.Group, error)
        + TeamMembersMinusGroupMembers(teamID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, error)
        + CountTeamMembersMinusGroupMembers(teamID string, groupIDs []string) (int64, error)
        + ChannelMembersMinusGroupMembers(channelID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, error)
        + CountChannelMembersMinusGroupMembers(channelID string, groupIDs []string) (int64, error)
        + AdminRoleGroupsForSyncableMember(userID string, syncableID string, syncableType model.GroupSyncableType) ([]string, error)
        + PermittedSyncableAdmins(syncableID string, syncableType model.GroupSyncableType) ([]string, error)
        + GroupCount() (int64, error)
        + GroupCountBySource(source model.GroupSource) (int64, error)
        + GroupTeamCount() (int64, error)
        + GroupChannelCount() (int64, error)
        + GroupMemberCount() (int64, error)
        + DistinctGroupMemberCount() (int64, error)
        + DistinctGroupMemberCountForSource(source model.GroupSource) (int64, error)
        + GroupCountWithAllowReference() (int64, error)
        + UpsertMembers(groupID string, userIDs []string) ([]*model.GroupMember, error)
        + DeleteMembers(groupID string, userIDs []string) ([]*model.GroupMember, error)

    }
    class SqlJobStore << (S,Aquamarine) >> {
        + Save(job *model.Job) (*model.Job, error)
        + SaveOnce(job *model.Job) (*model.Job, error)
        + UpdateOptimistically(job *model.Job, currentStatus string) (bool, error)
        + UpdateStatus(id string, status string) (*model.Job, error)
        + UpdateStatusOptimistically(id string, currentStatus string, newStatus string) (bool, error)
        + Get(c request.CTX, id string) (*model.Job, error)
        + GetAllByTypesPage(c request.CTX, jobTypes []string, offset int, limit int) ([]*model.Job, error)
        + GetAllByType(c request.CTX, jobType string) ([]*model.Job, error)
        + GetAllByTypeAndStatus(c request.CTX, jobType string, status string) ([]*model.Job, error)
        + GetAllByTypePage(c request.CTX, jobType string, offset int, limit int) ([]*model.Job, error)
        + GetAllByStatus(c request.CTX, status string) ([]*model.Job, error)
        + GetNewestJobByStatusAndType(status string, jobType string) (*model.Job, error)
        + GetNewestJobByStatusesAndType(status []string, jobType string) (*model.Job, error)
        + GetCountByStatusAndType(status string, jobType string) (int64, error)
        + Delete(id string) (string, error)
        + Cleanup(expiryTime int64, batchSize int) error

    }
    class SqlLicenseStore << (S,Aquamarine) >> {
        + Save(license *model.LicenseRecord) error
        + Get(c request.CTX, id string) (*model.LicenseRecord, error)
        + GetAll() ([]*model.LicenseRecord, error)

    }
    class SqlLinkMetadataStore << (S,Aquamarine) >> {
        + Save(metadata *model.LinkMetadata) (*model.LinkMetadata, error)
        + Get(url string, timestamp int64) (*model.LinkMetadata, error)

    }
    class SqlNotifyAdminStore << (S,Aquamarine) >> {
        + Save(data *model.NotifyAdminData) (*model.NotifyAdminData, error)
        + GetDataByUserIdAndFeature(userId string, feature model.MattermostFeature) ([]*model.NotifyAdminData, error)
        + Get(trial bool) ([]*model.NotifyAdminData, error)
        + DeleteBefore(trial bool, now int64) error
        + Update(userId string, requiredPlan string, requiredFeature model.MattermostFeature, now int64) error

    }
    class SqlOAuthStore << (S,Aquamarine) >> {
        + SaveApp(app *model.OAuthApp) (*model.OAuthApp, error)
        + UpdateApp(app *model.OAuthApp) (*model.OAuthApp, error)
        + GetApp(id string) (*model.OAuthApp, error)
        + GetAppByUser(userId string, offset int, limit int) ([]*model.OAuthApp, error)
        + GetApps(offset int, limit int) ([]*model.OAuthApp, error)
        + GetAuthorizedApps(userId string, offset int, limit int) ([]*model.OAuthApp, error)
        + DeleteApp(id string) error
        + SaveAccessData(accessData *model.AccessData) (*model.AccessData, error)
        + GetAccessData(token string) (*model.AccessData, error)
        + GetAccessDataByUserForApp(userID string, clientID string) ([]*model.AccessData, error)
        + GetAccessDataByRefreshToken(token string) (*model.AccessData, error)
        + GetPreviousAccessData(userID string, clientID string) (*model.AccessData, error)
        + UpdateAccessData(accessData *model.AccessData) (*model.AccessData, error)
        + RemoveAccessData(token string) error
        + RemoveAllAccessData() error
        + SaveAuthData(authData *model.AuthData) (*model.AuthData, error)
        + GetAuthData(code string) (*model.AuthData, error)
        + RemoveAuthData(code string) error
        + RemoveAuthDataByClientId(clientId string, userId string) error
        + RemoveAuthDataByUserId(userId string) error
        + PermanentDeleteAuthDataByUser(userId string) error

    }
    class SqlOutgoingOAuthConnectionStore << (S,Aquamarine) >> {
        + SaveConnection(c request.CTX, conn *model.OutgoingOAuthConnection) (*model.OutgoingOAuthConnection, error)
        + UpdateConnection(c request.CTX, conn *model.OutgoingOAuthConnection) (*model.OutgoingOAuthConnection, error)
        + GetConnection(c request.CTX, id string) (*model.OutgoingOAuthConnection, error)
        + GetConnections(c request.CTX, filters model.OutgoingOAuthConnectionGetConnectionsFilter) ([]*model.OutgoingOAuthConnection, error)
        + DeleteConnection(c request.CTX, id string) error

    }
    class SqlPluginStore << (S,Aquamarine) >> {
        + SaveOrUpdate(kv *model.PluginKeyValue) (*model.PluginKeyValue, error)
        + CompareAndSet(kv *model.PluginKeyValue, oldValue []byte) (bool, error)
        + CompareAndDelete(kv *model.PluginKeyValue, oldValue []byte) (bool, error)
        + SetWithOptions(pluginId string, key string, value []byte, opt model.PluginKVSetOptions) (bool, error)
        + Get(pluginId string, key string) (*model.PluginKeyValue, error)
        + Delete(pluginId string, key string) error
        + DeleteAllForPlugin(pluginId string) error
        + DeleteAllExpired() error
        + List(pluginId string, offset int, limit int) ([]string, error)

    }
    class SqlPostAcknowledgementStore << (S,Aquamarine) >> {
        + Get(postID string, userID string) (*model.PostAcknowledgement, error)
        + Save(postID string, userID string, acknowledgedAt int64) (*model.PostAcknowledgement, error)
        + Delete(acknowledgement *model.PostAcknowledgement) error
        + GetForPost(postID string) ([]*model.PostAcknowledgement, error)
        + GetForPosts(postIds []string) ([]*model.PostAcknowledgement, error)

    }
    class SqlPostPersistentNotificationStore << (S,Aquamarine) >> {
        + GetSingle(postID string) (*model.PostPersistentNotifications, error)
        + Get(params model.GetPersistentNotificationsPostsParams) ([]*model.PostPersistentNotifications, error)
        + UpdateLastActivity(postIds []string) error
        + Delete(postIds []string) error
        + DeleteExpired(maxSentCount int16) error
        + DeleteByChannel(channelIds []string) error
        + DeleteByTeam(teamIds []string) error

    }
    class SqlPostPriorityStore << (S,Aquamarine) >> {
        + GetForPost(postId string) (*model.PostPriority, error)
        + GetForPosts(postIds []string) ([]*model.PostPriority, error)

    }
    class SqlPostStore << (S,Aquamarine) >> {
        + ClearCaches() 
        + SaveMultiple(posts []*model.Post) ([]*model.Post, int, error)
        + Save(rctx request.CTX, post *model.Post) (*model.Post, error)
        + Update(rctx request.CTX, newPost *model.Post, oldPost *model.Post) (*model.Post, error)
        + OverwriteMultiple(posts []*model.Post) ([]*model.Post, int, error)
        + Overwrite(rctx request.CTX, post *model.Post) (*model.Post, error)
        + GetFlaggedPosts(userId string, offset int, limit int) (*model.PostList, error)
        + GetFlaggedPostsForTeam(userId string, teamId string, offset int, limit int) (*model.PostList, error)
        + GetFlaggedPostsForChannel(userId string, channelId string, offset int, limit int) (*model.PostList, error)
        + Get(ctx context.Context, id string, opts model.GetPostsOptions, userID string, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetSingle(id string, inclDeleted bool) (*model.Post, error)
        + InvalidateLastPostTimeCache(channelId string) 
        + GetEtag(channelId string, allowFromCache bool, collapsedThreads bool) string
        + Delete(rctx request.CTX, postID string, time int64, deleteByID string) error
        + PermanentDeleteByUser(rctx request.CTX, userId string) error
        + PermanentDeleteByChannel(rctx request.CTX, channelId string) error
        + GetPosts(options model.GetPostsOptions, _ bool, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsSince(options model.GetPostsSinceOptions, allowFromCache bool, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + HasAutoResponsePostByUserSince(options model.GetPostsSinceOptions, userId string) (bool, error)
        + GetPostsSinceForSync(options model.GetPostsSinceForSyncOptions, cursor model.GetPostsSinceForSyncCursor, limit int) ([]*model.Post, model.GetPostsSinceForSyncCursor, error)
        + GetPostsBefore(options model.GetPostsOptions, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsAfter(options model.GetPostsOptions, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsByThread(threadId string, since int64) ([]*model.Post, error)
        + GetPostIdBeforeTime(channelId string, time int64, collapsedThreads bool) (string, error)
        + GetPostIdAfterTime(channelId string, time int64, collapsedThreads bool) (string, error)
        + GetPostAfterTime(channelId string, time int64, collapsedThreads bool) (*model.Post, error)
        + GetNthRecentPostTime(n int64) (int64, error)
        + Search(teamId string, userId string, params *model.SearchParams) (*model.PostList, error)
        + AnalyticsUserCountsWithPostsByDay(teamId string) (model.AnalyticsRows, error)
        + AnalyticsPostCountsByDay(options *model.AnalyticsPostCountsOptions) (model.AnalyticsRows, error)
        + AnalyticsPostCount(options *model.PostCountOptions) (int64, error)
        + GetPostsCreatedAt(channelId string, time int64) ([]*model.Post, error)
        + GetPostsByIds(postIds []string) ([]*model.Post, error)
        + GetEditHistoryForPost(postId string) ([]*model.Post, error)
        + GetPostsBatchForIndexing(startTime int64, startPostID string, limit int) ([]*model.PostForIndexing, error)
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + GetOldest() (*model.Post, error)
        + GetMaxPostSize() int
        + GetParentsForExportAfter(limit int, afterId string, includeArchivedChannel bool) ([]*model.PostForExport, error)
        + GetRepliesForExport(rootId string) ([]*model.ReplyForExport, error)
        + GetDirectPostParentsForExportAfter(limit int, afterId string, includeArchivedChannels bool) ([]*model.DirectPostForExport, error)
        + SearchPostsForUser(rctx request.CTX, paramsList []*model.SearchParams, userId string, teamId string, page int, perPage int) (*model.PostSearchResults, error)
        + GetOldestEntityCreationTime() (int64, error)
        + SetPostReminder(reminder *model.PostReminder) error
        + GetPostReminders(now int64) ([]*model.PostReminder, error)
        + GetPostReminderMetadata(postID string) (*store.PostReminderMetadata, error)

    }
    class SqlPreferenceStore << (S,Aquamarine) >> {
        + Save(preferences model.Preferences) error
        + Get(userId string, category string, name string) (*model.Preference, error)
        + GetCategoryAndName(category string, name string) (model.Preferences, error)
        + GetCategory(userId string, category string) (model.Preferences, error)
        + GetAll(userId string) (model.Preferences, error)
        + PermanentDeleteByUser(userId string) error
        + Delete(userId string, category string, name string) error
        + DeleteCategory(userId string, category string) error
        + DeleteCategoryAndName(category string, name string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + CleanupFlagsBatch(limit int64) (int64, error)

    }
    class SqlProductNoticesStore << (S,Aquamarine) >> {
        + Clear(notices []string) error
        + ClearOldNotices(currentNotices model.ProductNotices) error
        + View(userId string, notices []string) error
        + GetViews(userId string) ([]model.ProductNoticeViewState, error)

    }
    class SqlReactionStore << (S,Aquamarine) >> {
        + Save(reaction *model.Reaction) (*model.Reaction, error)
        + Delete(reaction *model.Reaction) (*model.Reaction, error)
        + GetForPost(postId string, allowFromCache bool) ([]*model.Reaction, error)
        + ExistsOnPost(postId string, emojiName string) (bool, error)
        + GetForPostSince(postId string, since int64, excludeRemoteId string, inclDeleted bool) ([]*model.Reaction, error)
        + GetUniqueCountForPost(postId string) (int, error)
        + BulkGetForPosts(postIds []string) ([]*model.Reaction, error)
        + DeleteAllWithEmojiName(emojiName string) error
        + PermanentDeleteByUser(userId string) error
        + DeleteOrphanedRowsByIds(r *model.RetentionIdsForDeletion) error
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)

    }
    class SqlRetentionPolicyStore << (S,Aquamarine) >> {
        + Save(policy *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + Patch(patch *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + Get(id string) (*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + GetAll(offset int, limit int) ([]*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + GetCount() (int64, error)
        + Delete(id string) error
        + GetChannels(policyId string, offset int, limit int) (model.ChannelListWithTeamData, error)
        + GetChannelsCount(policyId string) (int64, error)
        + AddChannels(policyId string, channelIds []string) error
        + RemoveChannels(policyId string, channelIds []string) error
        + GetTeams(policyId string, offset int, limit int) ([]*model.Team, error)
        + GetTeamsCount(policyId string) (int64, error)
        + AddTeams(policyId string, teamIds []string) error
        + RemoveTeams(policyId string, teamIds []string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + GetTeamPoliciesForUser(userID string, offset int, limit int) ([]*model.RetentionPolicyForTeam, error)
        + GetTeamPoliciesCountForUser(userID string) (int64, error)
        + GetChannelPoliciesForUser(userID string, offset int, limit int) ([]*model.RetentionPolicyForChannel, error)
        + GetChannelPoliciesCountForUser(userID string) (int64, error)
        + GetIdsForDeletionByTableName(tableName string, limit int) ([]*model.RetentionIdsForDeletion, error)

    }
    class SqlRoleStore << (S,Aquamarine) >> {
        + Save(role *model.Role) (*model.Role, error)
        + Get(roleId string) (*model.Role, error)
        + GetAll() ([]*model.Role, error)
        + GetByName(ctx context.Context, name string) (*model.Role, error)
        + GetByNames(names []string) ([]*model.Role, error)
        + Delete(roleId string) (*model.Role, error)
        + PermanentDeleteAll() error
        + ChannelHigherScopedPermissions(roleNames []string) (<font color=blue>map</font>[string]*model.RolePermissions, error)
        + AllChannelSchemeRoles() ([]*model.Role, error)
        + ChannelRolesUnderTeamRole(roleName string) ([]*model.Role, error)

    }
    class SqlSchemeStore << (S,Aquamarine) >> {
        + Save(scheme *model.Scheme) (*model.Scheme, error)
        + Get(schemeId string) (*model.Scheme, error)
        + GetByName(schemeName string) (*model.Scheme, error)
        + Delete(schemeId string) (*model.Scheme, error)
        + GetAllPage(scope string, offset int, limit int) ([]*model.Scheme, error)
        + PermanentDeleteAll() error
        + CountByScope(scope string) (int64, error)
        + CountWithoutPermission(schemeScope string, permissionID string, roleScope model.RoleScope, roleType model.RoleType) (int64, error)

    }
    class SqlSessionStore << (S,Aquamarine) >> {
        + Save(c request.CTX, session *model.Session) (*model.Session, error)
        + Get(c request.CTX, sessionIdOrToken string) (*model.Session, error)
        + GetSessions(c request.CTX, userId string) ([]*model.Session, error)
        + GetSessionsWithActiveDeviceIds(userId string) ([]*model.Session, error)
        + GetSessionsExpired(thresholdMillis int64, mobileOnly bool, unnotifiedOnly bool) ([]*model.Session, error)
        + UpdateExpiredNotify(sessionId string, notified bool) error
        + Remove(sessionIdOrToken string) error
        + RemoveAllSessions() error
        + PermanentDeleteSessionsByUser(userId string) error
        + UpdateExpiresAt(sessionId string, time int64) error
        + UpdateLastActivityAt(sessionId string, time int64) error
        + UpdateRoles(userId string, roles string) (string, error)
        + UpdateDeviceId(id string, deviceId string, expiresAt int64) (string, error)
        + UpdateProps(session *model.Session) error
        + AnalyticsSessionCount() (int64, error)
        + Cleanup(expiryTime int64, batchSize int64) error

    }
    class SqlSharedChannelStore << (S,Aquamarine) >> {
        + Save(sc *model.SharedChannel) (*model.SharedChannel, error)
        + Get(channelId string) (*model.SharedChannel, error)
        + HasChannel(channelID string) (bool, error)
        + GetAll(offset int, limit int, opts model.SharedChannelFilterOpts) ([]*model.SharedChannel, error)
        + GetAllCount(opts model.SharedChannelFilterOpts) (int64, error)
        + Update(sc *model.SharedChannel) (*model.SharedChannel, error)
        + Delete(channelId string) (bool, error)
        + SaveRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + UpdateRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + GetRemote(id string) (*model.SharedChannelRemote, error)
        + GetRemoteByIds(channelId string, remoteId string) (*model.SharedChannelRemote, error)
        + GetRemotes(opts model.SharedChannelRemoteFilterOpts) ([]*model.SharedChannelRemote, error)
        + HasRemote(channelID string, remoteId string) (bool, error)
        + GetRemoteForUser(remoteId string, userId string) (*model.RemoteCluster, error)
        + UpdateRemoteCursor(id string, cursor model.GetPostsSinceForSyncCursor) error
        + DeleteRemote(id string) (bool, error)
        + GetRemotesStatus(channelId string) ([]*model.SharedChannelRemoteStatus, error)
        + SaveUser(scUser *model.SharedChannelUser) (*model.SharedChannelUser, error)
        + GetSingleUser(userID string, channelID string, remoteID string) (*model.SharedChannelUser, error)
        + GetUsersForUser(userID string) ([]*model.SharedChannelUser, error)
        + GetUsersForSync(filter model.GetUsersForSyncFilter) ([]*model.User, error)
        + UpdateUserLastSyncAt(userID string, channelID string, remoteID string) error
        + SaveAttachment(attachment *model.SharedChannelAttachment) (*model.SharedChannelAttachment, error)
        + UpsertAttachment(attachment *model.SharedChannelAttachment) (string, error)
        + GetAttachment(fileId string, remoteId string) (*model.SharedChannelAttachment, error)
        + UpdateAttachmentLastSyncAt(id string, syncTime int64) error

    }
    class SqlStatusStore << (S,Aquamarine) >> {
        + SaveOrUpdate(st *model.Status) error
        + Get(userId string) (*model.Status, error)
        + GetByIds(userIds []string) ([]*model.Status, error)
        + UpdateExpiredDNDStatuses() ([]*model.Status, error)
        + ResetAll() error
        + GetTotalActiveUsersCount() (int64, error)
        + UpdateLastActivityAt(userId string, lastActivityAt int64) error

    }
    class SqlStore << (S,Aquamarine) >> {
        + ReplicaXs []*

        + DBXFromContext(ctx context.Context) *sqlxDBWrapper
        + SetContext(context context.Context) 
        + Context() context.Context
        + Logger() mlog.LoggerIFace
        + DriverName() string
        + IsBinaryParamEnabled() bool
        + GetDbVersion(numerical bool) (string, error)
        + GetMasterX() *sqlxDBWrapper
        + SetMasterX(db *sql.DB) 
        + GetInternalMasterDB() *sql.DB
        + GetSearchReplicaX() *sqlxDBWrapper
        + GetReplicaX() *sqlxDBWrapper
        + GetInternalReplicaDB() *sql.DB
        + TotalMasterDbConnections() int
        + ReplicaLagAbs() error
        + ReplicaLagTime() error
        + TotalReadDbConnections() int
        + TotalSearchDbConnections() int
        + MarkSystemRanUnitTests() 
        + DoesTableExist(tableName string) bool
        + DoesColumnExist(tableName string, columnName string) bool
        + DoesTriggerExist(triggerName string) bool
        + CreateColumnIfNotExists(tableName string, columnName string, mySqlColType string, postgresColType string, defaultValue string) bool
        + RemoveTableIfExists(tableName string) bool
        + GetAllConns() []*sqlxDBWrapper
        + RecycleDBConnections(d time.Duration) 
        + Close() 
        + LockToMaster() 
        + UnlockFromMaster() 
        + Team() store.TeamStore
        + Channel() store.ChannelStore
        + Post() store.PostStore
        + RetentionPolicy() store.RetentionPolicyStore
        + User() store.UserStore
        + Bot() store.BotStore
        + Session() store.SessionStore
        + Audit() store.AuditStore
        + ClusterDiscovery() store.ClusterDiscoveryStore
        + RemoteCluster() store.RemoteClusterStore
        + Compliance() store.ComplianceStore
        + OAuth() store.OAuthStore
        + OutgoingOAuthConnection() store.OutgoingOAuthConnectionStore
        + System() store.SystemStore
        + Webhook() store.WebhookStore
        + Command() store.CommandStore
        + CommandWebhook() store.CommandWebhookStore
        + Preference() store.PreferenceStore
        + License() store.LicenseStore
        + Token() store.TokenStore
        + Emoji() store.EmojiStore
        + Status() store.StatusStore
        + FileInfo() store.FileInfoStore
        + UploadSession() store.UploadSessionStore
        + Reaction() store.ReactionStore
        + Job() store.JobStore
        + UserAccessToken() store.UserAccessTokenStore
        + ChannelMemberHistory() store.ChannelMemberHistoryStore
        + Plugin() store.PluginStore
        + Thread() store.ThreadStore
        + Role() store.RoleStore
        + TermsOfService() store.TermsOfServiceStore
        + ProductNotices() store.ProductNoticesStore
        + UserTermsOfService() store.UserTermsOfServiceStore
        + Scheme() store.SchemeStore
        + Group() store.GroupStore
        + LinkMetadata() store.LinkMetadataStore
        + NotifyAdmin() store.NotifyAdminStore
        + SharedChannel() store.SharedChannelStore
        + PostPriority() store.PostPriorityStore
        + Draft() store.DraftStore
        + PostAcknowledgement() store.PostAcknowledgementStore
        + PostPersistentNotification() store.PostPersistentNotificationStore
        + TrueUpReview() store.TrueUpReviewStore
        + DesktopTokens() store.DesktopTokensStore
        + DropAllTables() 
        + CheckIntegrity() <font color=blue>chan</font> model.IntegrityCheckResult
        + UpdateLicense(license *model.License) 
        + GetLicense() *model.License
        + GetLocalSchemaVersion() (int, error)
        + GetDBSchemaVersion() (int, error)
        + GetAppliedMigrations() ([]model.AppliedMigration, error)

    }
    class SqlStoreStores << (S,Aquamarine) >> {
        + TermsOfService store.TermsOfServiceStore
        + UserTermsOfService store.UserTermsOfServiceStore

    }
    class SqlSystemStore << (S,Aquamarine) >> {
        + Save(system *model.System) error
        + SaveOrUpdate(system *model.System) error
        + Update(system *model.System) error
        + Get() (model.StringMap, error)
        + GetByName(name string) (*model.System, error)
        + PermanentDeleteByName(name string) (*model.System, error)
        + InsertIfExists(system *model.System) (*model.System, error)

    }
    class SqlTeamStore << (S,Aquamarine) >> {
        + Save(team *model.Team) (*model.Team, error)
        + Update(team *model.Team) (*model.Team, error)
        + Get(id string) (*model.Team, error)
        + GetMany(ids []string) ([]*model.Team, error)
        + GetByInviteId(inviteId string) (*model.Team, error)
        + GetByEmptyInviteID() ([]*model.Team, error)
        + GetByName(name string) (*model.Team, error)
        + GetByNames(names []string) ([]*model.Team, error)
        + SearchAll(opts *model.TeamSearch) ([]*model.Team, error)
        + SearchAllPaged(opts *model.TeamSearch) ([]*model.Team, int64, error)
        + SearchOpen(opts *model.TeamSearch) ([]*model.Team, error)
        + SearchPrivate(opts *model.TeamSearch) ([]*model.Team, error)
        + GetAll() ([]*model.Team, error)
        + GetAllPage(offset int, limit int, opts *model.TeamSearch) ([]*model.Team, error)
        + GetTeamsByUserId(userId string) ([]*model.Team, error)
        + GetAllPrivateTeamListing() ([]*model.Team, error)
        + GetAllTeamListing() ([]*model.Team, error)
        + PermanentDelete(teamId string) error
        + AnalyticsTeamCount(opts *model.TeamSearch) (int64, error)
        + SaveMultipleMembers(members []*model.TeamMember, maxUsersPerTeam int) ([]*model.TeamMember, error)
        + SaveMember(rctx request.CTX, member *model.TeamMember, maxUsersPerTeam int) (*model.TeamMember, error)
        + UpdateMultipleMembers(members []*model.TeamMember) ([]*model.TeamMember, error)
        + UpdateMember(rctx request.CTX, member *model.TeamMember) (*model.TeamMember, error)
        + GetMember(ctx request.CTX, teamId string, userId string) (*model.TeamMember, error)
        + GetMembers(teamId string, offset int, limit int, teamMembersGetOptions *model.TeamMembersGetOptions) ([]*model.TeamMember, error)
        + GetTotalMemberCount(teamId string, restrictions *model.ViewUsersRestrictions) (int64, error)
        + GetActiveMemberCount(teamId string, restrictions *model.ViewUsersRestrictions) (int64, error)
        + GetMembersByIds(teamId string, userIds []string, restrictions *model.ViewUsersRestrictions) ([]*model.TeamMember, error)
        + GetTeamsForUser(ctx request.CTX, userId string, excludeTeamID string, includeDeleted bool) ([]*model.TeamMember, error)
        + GetTeamsForUserWithPagination(userId string, page int, perPage int) ([]*model.TeamMember, error)
        + GetChannelUnreadsForAllTeams(excludeTeamId string, userId string) ([]*model.ChannelUnread, error)
        + GetChannelUnreadsForTeam(teamId string, userId string) ([]*model.ChannelUnread, error)
        + RemoveMembers(rctx request.CTX, teamId string, userIds []string) error
        + RemoveMember(rctx request.CTX, teamId string, userId string) error
        + RemoveAllMembersByTeam(teamId string) error
        + RemoveAllMembersByUser(rctx request.CTX, userId string) error
        + UpdateLastTeamIconUpdate(teamId string, curTime int64) error
        + GetTeamsByScheme(schemeId string, offset int, limit int) ([]*model.Team, error)
        + MigrateTeamMembers(fromTeamId string, fromUserId string) (<font color=blue>map</font>[string]string, error)
        + ResetAllTeamSchemes() error
        + ClearCaches() 
        + InvalidateAllTeamIdsForUser(userId string) 
        + ClearAllCustomRoleAssignments() error
        + AnalyticsGetTeamCountForScheme(schemeId string) (int64, error)
        + GetAllForExportAfter(limit int, afterId string) ([]*model.TeamForExport, error)
        + GetUserTeamIds(userId string, allowFromCache bool) ([]string, error)
        + GetCommonTeamIDsForTwoUsers(userID string, otherUserID string) ([]string, error)
        + GetCommonTeamIDsForMultipleUsers(userIDs []string) ([]string, error)
        + GetTeamMembersForExport(userId string) ([]*model.TeamMemberForExport, error)
        + UserBelongsToTeams(userId string, teamIds []string) (bool, error)
        + UpdateMembersRole(teamID string, userIDs []string) error
        + GroupSyncedTeamCount() (int64, error)

    }
    class SqlTermsOfServiceStore << (S,Aquamarine) >> {
        + Save(termsOfService *model.TermsOfService) (*model.TermsOfService, error)
        + GetLatest(allowFromCache bool) (*model.TermsOfService, error)
        + Get(id string, allowFromCache bool) (*model.TermsOfService, error)

    }
    class SqlThreadStore << (S,Aquamarine) >> {
        + ClearCaches() 
        + Get(id string) (*model.Thread, error)
        + GetTotalUnreadThreads(userId string, teamId string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalThreads(userId string, teamId string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadMentions(userId string, teamId string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadUrgentMentions(userId string, teamId string, opts model.GetUserThreadsOpts) (int64, error)
        + GetThreadsForUser(userId string, teamId string, opts model.GetUserThreadsOpts) ([]*model.ThreadResponse, error)
        + GetTeamsUnreadForUser(userID string, teamIDs []string, includeUrgentMentionCount bool) (<font color=blue>map</font>[string]*model.TeamUnread, error)
        + GetThreadFollowers(threadID string, fetchOnlyActive bool) ([]string, error)
        + GetThreadForUser(threadMembership *model.ThreadMembership, extended bool, postPriorityEnabled bool) (*model.ThreadResponse, error)
        + MarkAllAsReadByChannels(userID string, channelIDs []string) error
        + MarkAllAsRead(userId string, threadIds []string) error
        + MarkAllAsReadByTeam(userId string, teamId string) error
        + MarkAsRead(userId string, threadId string, timestamp int64) error
        + UpdateMembership(membership *model.ThreadMembership) (*model.ThreadMembership, error)
        + DeleteMembershipsForChannel(userID string, channelID string) error
        + GetMembershipsForUser(userId string, teamId string) ([]*model.ThreadMembership, error)
        + GetMembershipForUser(userId string, postId string) (*model.ThreadMembership, error)
        + DeleteMembershipForUser(userId string, postId string) error
        + MaintainMembership(userId string, postId string, opts store.ThreadMembershipOpts) (*model.ThreadMembership, error)
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + PermanentDeleteBatchThreadMembershipsForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + DeleteOrphanedRows(limit int) (int64, error)
        + GetThreadUnreadReplyCount(threadMembership *model.ThreadMembership) (int64, error)

    }
    class SqlTokenStore << (S,Aquamarine) >> {
        + Save(token *model.Token) error
        + Delete(token string) error
        + GetByToken(tokenString string) (*model.Token, error)
        + Cleanup(expiryTime int64) 
        + GetAllTokensByType(tokenType string) ([]*model.Token, error)
        + RemoveAllTokensByType(tokenType string) error

    }
    class SqlTrueUpReviewStore << (S,Aquamarine) >> {
        + GetTrueUpReviewStatus(dueDate int64) (*model.TrueUpReviewStatus, error)
        + CreateTrueUpReviewStatusRecord(reviewStatus *model.TrueUpReviewStatus) (*model.TrueUpReviewStatus, error)
        + Update(reviewStatus *model.TrueUpReviewStatus) (*model.TrueUpReviewStatus, error)

    }
    class SqlUploadSessionStore << (S,Aquamarine) >> {
        + Save(session *model.UploadSession) (*model.UploadSession, error)
        + Update(session *model.UploadSession) error
        + Get(c request.CTX, id string) (*model.UploadSession, error)
        + GetForUser(userId string) ([]*model.UploadSession, error)
        + Delete(id string) error

    }
    class SqlUserAccessTokenStore << (S,Aquamarine) >> {
        + Save(token *model.UserAccessToken) (*model.UserAccessToken, error)
        + Delete(tokenId string) error
        + DeleteAllForUser(userId string) error
        + Get(tokenId string) (*model.UserAccessToken, error)
        + GetAll(offset int, limit int) ([]*model.UserAccessToken, error)
        + GetByToken(tokenString string) (*model.UserAccessToken, error)
        + GetByUser(userId string, offset int, limit int) ([]*model.UserAccessToken, error)
        + Search(term string) ([]*model.UserAccessToken, error)
        + UpdateTokenEnable(tokenId string) error
        + UpdateTokenDisable(tokenId string) error

    }
    class SqlUserStore << (S,Aquamarine) >> {
        + ClearCaches() 
        + InvalidateProfileCacheForUser(userId string) 
        + InsertUsers(users []*model.User) error
        + Save(rctx request.CTX, user *model.User) (*model.User, error)
        + DeactivateGuests() ([]string, error)
        + Update(rctx request.CTX, user *model.User, trustedUpdateData bool) (*model.UserUpdate, error)
        + UpdateNotifyProps(userID string, props <font color=blue>map</font>[string]string) error
        + UpdateLastPictureUpdate(userId string) error
        + ResetLastPictureUpdate(userId string) error
        + UpdateUpdateAt(userId string) (int64, error)
        + UpdatePassword(userId string, hashedPassword string) error
        + UpdateFailedPasswordAttempts(userId string, attempts int) error
        + UpdateAuthData(userId string, service string, authData *string, email string, resetMfa bool) (string, error)
        + UpdateLastLogin(userId string, lastLogin int64) error
        + ResetAuthDataToEmailForUsers(service string, userIDs []string, includeDeleted bool, dryRun bool) (int, error)
        + UpdateMfaSecret(userId string, secret string) error
        + UpdateMfaActive(userId string, active bool) error
        + GetMany(ctx context.Context, ids []string) ([]*model.User, error)
        + Get(ctx context.Context, id string) (*model.User, error)
        + GetAll() ([]*model.User, error)
        + GetAllAfter(limit int, afterId string) ([]*model.User, error)
        + GetEtagForAllProfiles() string
        + GetAllProfiles(options *model.UserGetOptions) ([]*model.User, error)
        + GetEtagForProfiles(teamId string) string
        + GetProfiles(options *model.UserGetOptions) ([]*model.User, error)
        + InvalidateProfilesInChannelCacheByUser(userId string) 
        + InvalidateProfilesInChannelCache(channelId string) 
        + GetProfilesInChannel(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesInChannelByStatus(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesInChannelByAdmin(options *model.UserGetOptions) ([]*model.User, error)
        + GetAllProfilesInChannel(ctx context.Context, channelID string, allowFromCache bool) (<font color=blue>map</font>[string]*model.User, error)
        + GetProfilesNotInChannel(teamId string, channelId string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfilesWithoutTeam(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesByUsernames(usernames []string, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetRecentlyActiveUsersForTeam(teamId string, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetNewUsersForTeam(teamId string, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfileByIds(ctx context.Context, userIds []string, options *store.UserGetByIdsOpts, allowFromCache bool) ([]*model.User, error)
        + GetProfileByGroupChannelIdsForUser(userId string, channelIds []string) (<font color=blue>map</font>[string][]*model.User, error)
        + GetSystemAdminProfiles() (<font color=blue>map</font>[string]*model.User, error)
        + GetByEmail(email string) (*model.User, error)
        + GetByRemoteID(remoteID string) (*model.User, error)
        + GetByAuth(authData *string, authService string) (*model.User, error)
        + GetAllUsingAuthService(authService string) ([]*model.User, error)
        + GetAllNotInAuthService(authServices []string) ([]*model.User, error)
        + GetByUsername(username string) (*model.User, error)
        + GetForLogin(loginId string, allowSignInWithUsername bool, allowSignInWithEmail bool) (*model.User, error)
        + VerifyEmail(userId string, email string) (string, error)
        + PermanentDelete(userId string) error
        + Count(options model.UserCountOptions) (int64, error)
        + AnalyticsActiveCount(timePeriod int64, options model.UserCountOptions) (int64, error)
        + AnalyticsActiveCountForPeriod(startTime int64, endTime int64, options model.UserCountOptions) (int64, error)
        + GetUnreadCount(userId string, isCRTEnabled bool) (int64, error)
        + GetUnreadCountForChannel(userId string, channelId string) (int64, error)
        + GetAnyUnreadPostCountForChannel(userId string, channelId string) (int64, error)
        + Search(rctx request.CTX, teamId string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchWithoutTeam(term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInTeam(notInTeamId string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInChannel(teamId string, channelId string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchInChannel(channelId string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + AnalyticsGetInactiveUsersCount() (int64, error)
        + AnalyticsGetExternalUsers(hostDomain string) (bool, error)
        + AnalyticsGetGuestCount() (int64, error)
        + AnalyticsGetSystemAdminCount() (int64, error)
        + GetProfilesNotInTeam(teamId string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetEtagForProfilesNotInTeam(teamId string) string
        + ClearAllCustomRoleAssignments() error
        + InferSystemInstallDate() (int64, error)
        + GetUsersBatchForIndexing(startTime int64, startFileID string, limit int) ([]*model.UserForIndexing, error)
        + GetTeamGroupUsers(teamID string) ([]*model.User, error)
        + GetChannelGroupUsers(channelID string) ([]*model.User, error)
        + PromoteGuestToUser(userId string) error
        + DemoteUserToGuest(userID string) (*model.User, error)
        + AutocompleteUsersInChannel(rctx request.CTX, teamId string, channelId string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInChannel, error)
        + GetKnownUsers(userId string) ([]string, error)
        + IsEmpty(excludeBots bool) (bool, error)
        + GetUsersWithInvalidEmails(page int, perPage int, restrictedDomains string) ([]*model.User, error)
        + RefreshPostStatsForUsers() error
        + GetUserCountForReport(filter *model.UserReportOptions) (int64, error)
        + GetUserReport(filter *model.UserReportOptions) ([]*model.UserReportQuery, error)

    }
    class SqlUserTermsOfServiceStore << (S,Aquamarine) >> {
        + GetByUser(userId string) (*model.UserTermsOfService, error)
        + Save(userTermsOfService *model.UserTermsOfService) (*model.UserTermsOfService, error)
        + Delete(userId string, termsOfServiceId string) error

    }
    class SqlWebhookStore << (S,Aquamarine) >> {
        + ClearCaches() 
        + InvalidateWebhookCache(webhookId string) 
        + SaveIncoming(webhook *model.IncomingWebhook) (*model.IncomingWebhook, error)
        + UpdateIncoming(hook *model.IncomingWebhook) (*model.IncomingWebhook, error)
        + GetIncoming(id string, allowFromCache bool) (*model.IncomingWebhook, error)
        + DeleteIncoming(webhookId string, time int64) error
        + PermanentDeleteIncomingByUser(userId string) error
        + PermanentDeleteIncomingByChannel(channelId string) error
        + GetIncomingList(offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingListByUser(userId string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingByTeamByUser(teamId string, userId string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingByTeam(teamId string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingByChannel(channelId string) ([]*model.IncomingWebhook, error)
        + SaveOutgoing(webhook *model.OutgoingWebhook) (*model.OutgoingWebhook, error)
        + GetOutgoing(id string) (*model.OutgoingWebhook, error)
        + GetOutgoingListByUser(userId string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingList(offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByChannelByUser(channelId string, userId string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByChannel(channelId string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByTeamByUser(teamId string, userId string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByTeam(teamId string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + DeleteOutgoing(webhookId string, time int64) error
        + PermanentDeleteOutgoingByUser(userId string) error
        + PermanentDeleteOutgoingByChannel(channelId string) error
        + UpdateOutgoing(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, error)
        + AnalyticsIncomingCount(teamId string) (int64, error)
        + AnalyticsOutgoingCount(teamId string) (int64, error)

    }
    class StoreTestWrapper << (S,Aquamarine) >> {
        + GetMasterX() storetest.SqlXExecutor
        + DriverName() string

    }
    class UserWithChannel << (S,Aquamarine) >> {
        + ChannelId string

    }
    class UserWithLastActivityAt << (S,Aquamarine) >> {
        + LastActivityAt int64

    }
    class allChannelMember << (S,Aquamarine) >> {
        + ChannelId string
        + Roles string
        + SchemeGuest sql.NullBool
        + SchemeUser sql.NullBool
        + SchemeAdmin sql.NullBool
        + TeamSchemeDefaultGuestRole sql.NullString
        + TeamSchemeDefaultUserRole sql.NullString
        + TeamSchemeDefaultAdminRole sql.NullString
        + ChannelSchemeDefaultGuestRole sql.NullString
        + ChannelSchemeDefaultUserRole sql.NullString
        + ChannelSchemeDefaultAdminRole sql.NullString

        + Process() (string, string)

    }
    class allChannelMemberNotifyProps << (S,Aquamarine) >> {
        + UserId string
        + NotifyProps model.StringMap

    }
    class allChannelMembers << (S,Aquamarine) >> {
        + ToMapStringString() <font color=blue>map</font>[string]string

    }
    class bot << (S,Aquamarine) >> {
        + UserId string
        + Description string
        + OwnerId string
        + LastIconUpdate int64
        + CreateAt int64
        + UpdateAt int64
        + DeleteAt int64

    }
    class channelMember << (S,Aquamarine) >> {
        + ChannelId string
        + UserId string
        + Roles string
        + LastViewedAt int64
        + MsgCount int64
        + MentionCount int64
        + UrgentMentionCount int64
        + NotifyProps model.StringMap
        + LastUpdateAt int64
        + SchemeUser sql.NullBool
        + SchemeAdmin sql.NullBool
        + SchemeGuest sql.NullBool
        + MentionCountRoot int64
        + MsgCountRoot int64

    }
    class channelMemberWithSchemeRoles << (S,Aquamarine) >> {
        + ChannelId string
        + UserId string
        + Roles string
        + LastViewedAt int64
        + MsgCount int64
        + MentionCount int64
        + MentionCountRoot int64
        + UrgentMentionCount int64
        + NotifyProps model.StringMap
        + LastUpdateAt int64
        + SchemeGuest sql.NullBool
        + SchemeUser sql.NullBool
        + SchemeAdmin sql.NullBool
        + TeamSchemeDefaultGuestRole sql.NullString
        + TeamSchemeDefaultUserRole sql.NullString
        + TeamSchemeDefaultAdminRole sql.NullString
        + ChannelSchemeDefaultGuestRole sql.NullString
        + ChannelSchemeDefaultUserRole sql.NullString
        + ChannelSchemeDefaultAdminRole sql.NullString
        + MsgCountRoot int64

        + ToModel() *model.ChannelMember

    }
    class channelMemberWithSchemeRolesList << (S,Aquamarine) >> {
        + ToModel() model.ChannelMembers

    }
    class channelMemberWithTeamWithSchemeRoles << (S,Aquamarine) >> {
        + TeamDisplayName string
        + TeamName string
        + TeamUpdateAt int64

        + ToModel() *model.ChannelMemberWithTeamData

    }
    class channelMemberWithTeamWithSchemeRolesList << (S,Aquamarine) >> {
        + ToModel() model.ChannelMembersWithTeamData

    }
    class channelRolesPermissions << (S,Aquamarine) >> {
        + GuestRoleName string
        + UserRoleName string
        + AdminRoleName string
        + HigherScopedGuestPermissions string
        + HigherScopedUserPermissions string
        + HigherScopedAdminPermissions string

    }
    interface dbSelecter  {
        + Select(i any, query string, args ...any) error

    }
    class etagPosts << (S,Aquamarine) >> {
        + Id string
        + UpdateAt int64

    }
    class fileInfoWithChannelID << (S,Aquamarine) >> {
        + Id string
        + CreatorId string
        + PostId string
        + ChannelId string
        + CreateAt int64
        + UpdateAt int64
        + DeleteAt int64
        + Path string
        + ThumbnailPath string
        + PreviewPath string
        + Name string
        + Extension string
        + Size int64
        + MimeType string
        + Width int
        + Height int
        + HasPreviewImage bool
        + MiniPreview *[]byte
        + Content string
        + RemoteId *string
        + Archived bool

        + ToModel() *model.FileInfo

    }
    class group << (S,Aquamarine) >> {
        + Id string
        + Name *string
        + DisplayName string
        + Description string
        + Source model.GroupSource
        + RemoteId *string
        + CreateAt int64
        + UpdateAt int64
        + DeleteAt int64
        + HasSyncables bool
        + MemberCount *int
        + AllowReference bool
        + ChannelMemberCount *int
        + ChannelMemberTimezonesCount *int

        + ToModel() *model.Group

    }
    class groupAssociatedToChannelWithSchemeAdmin << (S,Aquamarine) >> {
        + ChannelId string

        + ToModel() *model.GroupsAssociatedToChannelWithSchemeAdmin

    }
    class groupChannel << (S,Aquamarine) >> {
        + ChannelId string

    }
    class groupChannelJoin << (S,Aquamarine) >> {
        + ChannelDisplayName string
        + TeamDisplayName string
        + TeamType string
        + ChannelType string
        + TeamId string

    }
    class groupTeam << (S,Aquamarine) >> {
        + TeamId string

    }
    class groupTeamJoin << (S,Aquamarine) >> {
        + TeamDisplayName string
        + TeamType string

    }
    class groupWithSchemeAdmin << (S,Aquamarine) >> {
        + SyncableSchemeAdmin *bool

        + ToModel() *model.GroupWithSchemeAdmin

    }
    class groups << (S,Aquamarine) >> {
        + ToModel() []*model.Group

    }
    class groupsAssociatedToChannelWithSchemeAdmin << (S,Aquamarine) >> {
        + ToModel() []*model.GroupsAssociatedToChannelWithSchemeAdmin

    }
    class groupsWithSchemeAdmin << (S,Aquamarine) >> {
        + ToModel() []*model.GroupWithSchemeAdmin

    }
    class jsonArray << (S,Aquamarine) >> {
        + Value() (driver.Value, error)

    }
    class jsonKeyPath << (S,Aquamarine) >> {
        + Value() (driver.Value, error)

    }
    class jsonStringVal << (S,Aquamarine) >> {
        + Value() (driver.Value, error)

    }
    class morphWriter << (S,Aquamarine) >> {
        + Write(in []byte) (int, error)

    }
    class postIds << (S,Aquamarine) >> {
        + Id string
        + RootId string
        + UserId string

    }
    class postWithExtra << (S,Aquamarine) >> {
        + ThreadReplyCount int64
        + IsFollowing *bool
        + ThreadParticipants model.StringArray

    }
    class publicChannel << (S,Aquamarine) >> {
        + Id string
        + DeleteAt int64
        + TeamId string
        + DisplayName string
        + Name string
        + Header string
        + Purpose string

    }
    class relationalCheckConfig << (S,Aquamarine) >> {
    }
    class rolesInfo << (S,Aquamarine) >> {
    }
    class sidebarCategoryForJoin << (S,Aquamarine) >> {
        + ChannelId *string

    }
    class sqlClusterDiscoveryStore << (S,Aquamarine) >> {
        + Save(ClusterDiscovery *model.ClusterDiscovery) error
        + Delete(ClusterDiscovery *model.ClusterDiscovery) (bool, error)
        + Exists(ClusterDiscovery *model.ClusterDiscovery) (bool, error)
        + GetAll(ClusterDiscoveryType string, clusterName string) ([]*model.ClusterDiscovery, error)
        + SetLastPingAt(ClusterDiscovery *model.ClusterDiscovery) error
        + Cleanup() error

    }
    class sqlRemoteClusterStore << (S,Aquamarine) >> {
        + Save(remoteCluster *model.RemoteCluster) (*model.RemoteCluster, error)
        + Update(remoteCluster *model.RemoteCluster) (*model.RemoteCluster, error)
        + Delete(remoteId string) (bool, error)
        + Get(remoteId string) (*model.RemoteCluster, error)
        + GetByPluginID(pluginID string) (*model.RemoteCluster, error)
        + GetAll(filter model.RemoteClusterQueryFilter) ([]*model.RemoteCluster, error)
        + UpdateTopics(remoteClusterid string, topics string) (*model.RemoteCluster, error)
        + SetLastPingAt(remoteClusterId string) error

    }
    class sqlstore.allChannelMembers << (T, #FF7700) >>  {
    }
    class sqlstore.channelMemberWithSchemeRolesList << (T, #FF7700) >>  {
    }
    class sqlstore.channelMemberWithTeamWithSchemeRolesList << (T, #FF7700) >>  {
    }
    class sqlstore.contextValue << (T, #FF7700) >>  {
    }
    class sqlstore.groups << (T, #FF7700) >>  {
    }
    class sqlstore.groupsAssociatedToChannelWithSchemeAdmin << (T, #FF7700) >>  {
    }
    class sqlstore.groupsWithSchemeAdmin << (T, #FF7700) >>  {
    }
    class sqlstore.jsonArray << (T, #FF7700) >>  {
    }
    class sqlstore.jsonKeyPath << (T, #FF7700) >>  {
    }
    class sqlstore.jsonStringVal << (T, #FF7700) >>  {
    }
    class sqlstore.migrationDirection << (T, #FF7700) >>  {
    }
    class sqlstore.selectType << (T, #FF7700) >>  {
    }
    class sqlstore.storeContextKey << (T, #FF7700) >>  {
    }
    class sqlstore.teamMemberWithSchemeRolesList << (T, #FF7700) >>  {
    }
    class sqlxDBWrapper << (S,Aquamarine) >> {
        + Stats() sql.DBStats
        + Beginx() (*sqlxTxWrapper, error)
        + BeginXWithIsolation(opts *sql.TxOptions) (*sqlxTxWrapper, error)
        + Get(dest any, query string, args ...any) error
        + GetBuilder(dest any, builder Builder) error
        + NamedExec(query string, arg any) (sql.Result, error)
        + Exec(query string, args ...any) (sql.Result, error)
        + ExecBuilder(builder Builder) (sql.Result, error)
        + ExecNoTimeout(query string, args ...any) (sql.Result, error)
        + ExecRaw(query string, args ...any) (sql.Result, error)
        + NamedQuery(query string, arg any) (*sqlx.Rows, error)
        + QueryRowX(query string, args ...any) *sqlx.Row
        + QueryX(query string, args ...any) (*sqlx.Rows, error)
        + Select(dest any, query string, args ...any) error
        + SelectCtx(ctx context.Context, dest any, query string, args ...any) error
        + SelectBuilder(dest any, builder Builder) error
        + Online() bool

    }
    interface sqlxExecutor  {
        + Get(dest any, query string, args ...any) error
        + GetBuilder(dest any, builder Builder) error
        + NamedExec(query string, arg any) (sql.Result, error)
        + Exec(query string, args ...any) (sql.Result, error)
        + ExecBuilder(builder Builder) (sql.Result, error)
        + ExecRaw(query string, args ...any) (sql.Result, error)
        + NamedQuery(query string, arg any) (*sqlx.Rows, error)
        + QueryRowX(query string, args ...any) *sqlx.Row
        + QueryX(query string, args ...any) (*sqlx.Rows, error)
        + Select(dest any, query string, args ...any) error
        + SelectBuilder(dest any, builder Builder) error

    }
    class sqlxTxWrapper << (S,Aquamarine) >> {
        + Get(dest any, query string, args ...any) error
        + GetBuilder(dest any, builder Builder) error
        + Exec(query string, args ...any) (sql.Result, error)
        + ExecNoTimeout(query string, args ...any) (sql.Result, error)
        + ExecBuilder(builder Builder) (sql.Result, error)
        + ExecRaw(query string, args ...any) (sql.Result, error)
        + NamedExec(query string, arg any) (sql.Result, error)
        + NamedQuery(query string, arg any) (*sqlx.Rows, error)
        + QueryRowX(query string, args ...any) *sqlx.Row
        + QueryX(query string, args ...any) (*sqlx.Rows, error)
        + Select(dest any, query string, args ...any) error
        + SelectBuilder(dest any, builder Builder) error

    }
    class teamMember << (S,Aquamarine) >> {
        + TeamId string
        + UserId string
        + Roles string
        + DeleteAt int64
        + SchemeUser sql.NullBool
        + SchemeAdmin sql.NullBool
        + SchemeGuest sql.NullBool
        + CreateAt int64

    }
    class teamMemberWithSchemeRoles << (S,Aquamarine) >> {
        + TeamId string
        + UserId string
        + Roles string
        + DeleteAt int64
        + SchemeGuest sql.NullBool
        + SchemeUser sql.NullBool
        + SchemeAdmin sql.NullBool
        + TeamSchemeDefaultGuestRole sql.NullString
        + TeamSchemeDefaultUserRole sql.NullString
        + TeamSchemeDefaultAdminRole sql.NullString
        + CreateAt int64

        + ToModel() *model.TeamMember

    }
    class teamMemberWithSchemeRolesList << (S,Aquamarine) >> {
        + ToModel() []*model.TeamMember

    }
    class userMembership << (S,Aquamarine) >> {
        + UserId string
        + ChannelId string
        + CategoryId string

    }
}
"model.Post" *-- "sqlstore.JoinedThread"
"sqlstore.SqlStore" *-- "sqlstore.SqlAuditStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlBotStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlChannelMemberHistoryStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlChannelStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlCommandStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlCommandWebhookStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlComplianceStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlDesktopTokensStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlDraftStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlEmojiStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlFileInfoStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlGroupStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlJobStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlLicenseStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlLinkMetadataStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlNotifyAdminStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlOAuthStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlOutgoingOAuthConnectionStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlPluginStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlPostAcknowledgementStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlPostPersistentNotificationStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlPostPriorityStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlPostStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlPreferenceStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlProductNoticesStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlReactionStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlRetentionPolicyStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlRoleStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlSchemeStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlSessionStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlSharedChannelStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlStatusStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlSystemStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlTeamStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlTermsOfServiceStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlThreadStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlTokenStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlTrueUpReviewStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlUploadSessionStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlUserAccessTokenStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlUserStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlUserTermsOfServiceStore"
"sqlstore.SqlStore" *-- "sqlstore.SqlWebhookStore"
"model.User" *-- "sqlstore.UserWithChannel"
"model.User" *-- "sqlstore.UserWithLastActivityAt"
"sqlstore.channelMemberWithSchemeRoles" *-- "sqlstore.channelMemberWithTeamWithSchemeRoles"
"sqlstore.groupWithSchemeAdmin" *-- "sqlstore.groupAssociatedToChannelWithSchemeAdmin"
"model.GroupSyncable" *-- "sqlstore.groupChannel"
"sqlstore.groupChannel" *-- "sqlstore.groupChannelJoin"
"model.GroupSyncable" *-- "sqlstore.groupTeam"
"sqlstore.groupTeam" *-- "sqlstore.groupTeamJoin"
"sqlstore.group" *-- "sqlstore.groupWithSchemeAdmin"
"model.Post" *-- "sqlstore.postWithExtra"
"model.SidebarCategory" *-- "sqlstore.sidebarCategoryForJoin"
"sqlstore.SqlStore" *-- "sqlstore.sqlClusterDiscoveryStore"
"sqlstore.SqlStore" *-- "sqlstore.sqlRemoteClusterStore"
"sqlx.DB" *-- "sqlstore.sqlxDBWrapper"
"sqlx.Tx" *-- "sqlstore.sqlxTxWrapper"

"store.AuditStore" <|-- "sqlstore.SqlAuditStore"
"store.BotStore" <|-- "sqlstore.SqlBotStore"
"store.ChannelMemberHistoryStore" <|-- "sqlstore.SqlChannelMemberHistoryStore"
"store.ChannelStore" <|-- "sqlstore.SqlChannelStore"
"store.CommandStore" <|-- "sqlstore.SqlCommandStore"
"store.CommandWebhookStore" <|-- "sqlstore.SqlCommandWebhookStore"
"store.ComplianceStore" <|-- "sqlstore.SqlComplianceStore"
"store.DesktopTokensStore" <|-- "sqlstore.SqlDesktopTokensStore"
"store.DraftStore" <|-- "sqlstore.SqlDraftStore"
"store.EmojiStore" <|-- "sqlstore.SqlEmojiStore"
"store.FileInfoStore" <|-- "sqlstore.SqlFileInfoStore"
"store.GroupStore" <|-- "sqlstore.SqlGroupStore"
"store.JobStore" <|-- "sqlstore.SqlJobStore"
"store.LicenseStore" <|-- "sqlstore.SqlLicenseStore"
"store.LinkMetadataStore" <|-- "sqlstore.SqlLinkMetadataStore"
"store.NotifyAdminStore" <|-- "sqlstore.SqlNotifyAdminStore"
"store.OAuthStore" <|-- "sqlstore.SqlOAuthStore"
"store.OutgoingOAuthConnectionStore" <|-- "sqlstore.SqlOutgoingOAuthConnectionStore"
"store.PluginStore" <|-- "sqlstore.SqlPluginStore"
"store.PostAcknowledgementStore" <|-- "sqlstore.SqlPostAcknowledgementStore"
"store.PostPersistentNotificationStore" <|-- "sqlstore.SqlPostPersistentNotificationStore"
"store.PostPriorityStore" <|-- "sqlstore.SqlPostPriorityStore"
"store.PostStore" <|-- "sqlstore.SqlPostStore"
"store.PreferenceStore" <|-- "sqlstore.SqlPreferenceStore"
"store.ProductNoticesStore" <|-- "sqlstore.SqlProductNoticesStore"
"store.ReactionStore" <|-- "sqlstore.SqlReactionStore"
"store.RetentionPolicyStore" <|-- "sqlstore.SqlRetentionPolicyStore"
"store.RoleStore" <|-- "sqlstore.SqlRoleStore"
"store.SchemeStore" <|-- "sqlstore.SqlSchemeStore"
"store.SessionStore" <|-- "sqlstore.SqlSessionStore"
"store.SharedChannelStore" <|-- "sqlstore.SqlSharedChannelStore"
"store.StatusStore" <|-- "sqlstore.SqlStatusStore"
"store.Store" <|-- "sqlstore.SqlStore"
"hosted_purchase_screening.ScreenTimeStore" <|-- "sqlstore.SqlSystemStore"
"store.SystemStore" <|-- "sqlstore.SqlSystemStore"
"store.TeamStore" <|-- "sqlstore.SqlTeamStore"
"store.TermsOfServiceStore" <|-- "sqlstore.SqlTermsOfServiceStore"
"store.ThreadStore" <|-- "sqlstore.SqlThreadStore"
"store.TokenStore" <|-- "sqlstore.SqlTokenStore"
"store.TrueUpReviewStore" <|-- "sqlstore.SqlTrueUpReviewStore"
"store.UploadSessionStore" <|-- "sqlstore.SqlUploadSessionStore"
"store.UserAccessTokenStore" <|-- "sqlstore.SqlUserAccessTokenStore"
"store.UserStore" <|-- "sqlstore.SqlUserStore"
"store.UserTermsOfServiceStore" <|-- "sqlstore.SqlUserTermsOfServiceStore"
"store.WebhookStore" <|-- "sqlstore.SqlWebhookStore"
"storetest.SqlStore" <|-- "sqlstore.StoreTestWrapper"
"store.ClusterDiscoveryStore" <|-- "sqlstore.sqlClusterDiscoveryStore"
"store.RemoteClusterStore" <|-- "sqlstore.sqlRemoteClusterStore"
"sqlstore.dbSelecter" <|-- "sqlstore.sqlxDBWrapper"
"sqlstore.sqlxExecutor" <|-- "sqlstore.sqlxDBWrapper"
"sqlstore.dbSelecter" <|-- "sqlstore.sqlxTxWrapper"
"sqlstore.sqlxExecutor" <|-- "sqlstore.sqlxTxWrapper"

namespace store {
    interface AuditStore  {
        + Save(audit *model.Audit) error
        + Get(user_id string, offset int, limit int) (model.Audits, error)
        + PermanentDeleteByUser(userID string) error

    }
    interface BotStore  {
        + Get(userID string, includeDeleted bool) (*model.Bot, error)
        + GetAll(options *model.BotGetOptions) ([]*model.Bot, error)
        + Save(bot *model.Bot) (*model.Bot, error)
        + Update(bot *model.Bot) (*model.Bot, error)
        + PermanentDelete(userID string) error

    }
    interface ChannelMemberHistoryStore  {
        + LogJoinEvent(userID string, channelID string, joinTime int64) error
        + LogLeaveEvent(userID string, channelID string, leaveTime int64) error
        + GetUsersInChannelDuring(startTime int64, endTime int64, channelID string) ([]*model.ChannelMemberHistoryResult, error)
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + DeleteOrphanedRows(limit int) (int64, error)
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + GetChannelsLeftSince(userID string, since int64) ([]string, error)

    }
    class ChannelSearchOpts << (S,Aquamarine) >> {
        + Term string
        + NotAssociatedToGroup string
        + IncludeDeleted bool
        + Deleted bool
        + ExcludeChannelNames []string
        + TeamIds []string
        + GroupConstrained bool
        + ExcludeGroupConstrained bool
        + PolicyID string
        + ExcludePolicyConstrained bool
        + IncludePolicyID bool
        + IncludeTeamInfo bool
        + IncludeSearchById bool
        + CountOnly bool
        + Public bool
        + Private bool
        + Page *int
        + PerPage *int
        + LastDeleteAt int
        + LastUpdateAt int

        + IsPaginated() bool

    }
    interface ChannelStore  {
        + Save(rctx request.CTX, channel *model.Channel, maxChannelsPerTeam int64) (*model.Channel, error)
        + CreateDirectChannel(ctx request.CTX, userID *model.User, otherUserID *model.User, channelOptions ...model.ChannelOption) (*model.Channel, error)
        + SaveDirectChannel(ctx request.CTX, channel *model.Channel, member1 *model.ChannelMember, member2 *model.ChannelMember) (*model.Channel, error)
        + Update(ctx request.CTX, channel *model.Channel) (*model.Channel, error)
        + UpdateSidebarChannelCategoryOnMove(channel *model.Channel, newTeamID string) error
        + ClearSidebarOnTeamLeave(userID string, teamID string) error
        + Get(id string, allowFromCache bool) (*model.Channel, error)
        + GetMany(ids []string, allowFromCache bool) (model.ChannelList, error)
        + InvalidateChannel(id string) 
        + InvalidateChannelByName(teamID string, name string) 
        + Delete(channelID string, timestamp int64) error
        + Restore(channelID string, timestamp int64) error
        + SetDeleteAt(channelID string, deleteAt int64, updateAt int64) error
        + PermanentDelete(ctx request.CTX, channelID string) error
        + PermanentDeleteByTeam(teamID string) error
        + GetByName(team_id string, name string, allowFromCache bool) (*model.Channel, error)
        + GetByNames(team_id string, names []string, allowFromCache bool) ([]*model.Channel, error)
        + GetByNameIncludeDeleted(team_id string, name string, allowFromCache bool) (*model.Channel, error)
        + GetByNamesIncludeDeleted(team_id string, names []string, allowFromCache bool) ([]*model.Channel, error)
        + GetDeletedByName(team_id string, name string) (*model.Channel, error)
        + GetDeleted(team_id string, offset int, limit int, userID string) (model.ChannelList, error)
        + GetChannels(teamID string, userID string, opts *model.ChannelSearchOpts) (model.ChannelList, error)
        + GetChannelsByUser(userID string, includeDeleted bool, lastDeleteAt int, pageSize int, fromChannelID string) (model.ChannelList, error)
        + GetAllChannelMemberIdsByChannelId(id string) ([]string, error)
        + GetAllChannels(page int, perPage int, opts ChannelSearchOpts) (model.ChannelListWithTeamData, error)
        + GetAllChannelsCount(opts ChannelSearchOpts) (int64, error)
        + GetMoreChannels(teamID string, userID string, offset int, limit int) (model.ChannelList, error)
        + GetPrivateChannelsForTeam(teamID string, offset int, limit int) (model.ChannelList, error)
        + GetPublicChannelsForTeam(teamID string, offset int, limit int) (model.ChannelList, error)
        + GetPublicChannelsByIdsForTeam(teamID string, channelIds []string) (model.ChannelList, error)
        + GetChannelCounts(teamID string, userID string) (*model.ChannelCounts, error)
        + GetTeamChannels(teamID string) (model.ChannelList, error)
        + GetAll(teamID string) ([]*model.Channel, error)
        + GetChannelsByIds(channelIds []string, includeDeleted bool) ([]*model.Channel, error)
        + GetChannelsWithTeamDataByIds(channelIds []string, includeDeleted bool) ([]*model.ChannelWithTeamData, error)
        + GetForPost(postID string) (*model.Channel, error)
        + SaveMultipleMembers(members []*model.ChannelMember) ([]*model.ChannelMember, error)
        + SaveMember(rctx request.CTX, member *model.ChannelMember) (*model.ChannelMember, error)
        + UpdateMember(ctx request.CTX, member *model.ChannelMember) (*model.ChannelMember, error)
        + UpdateMultipleMembers(members []*model.ChannelMember) ([]*model.ChannelMember, error)
        + UpdateMemberNotifyProps(channelID string, userID string, props <font color=blue>map</font>[string]string) (*model.ChannelMember, error)
        + PatchMultipleMembersNotifyProps(members []*model.ChannelMemberIdentifier, notifyProps <font color=blue>map</font>[string]string) ([]*model.ChannelMember, error)
        + GetMembers(channelID string, offset int, limit int) (model.ChannelMembers, error)
        + GetMember(ctx context.Context, channelID string, userID string) (*model.ChannelMember, error)
        + GetMemberLastViewedAt(ctx context.Context, channelID string, userID string) (int64, error)
        + GetChannelMembersTimezones(channelID string) ([]model.StringMap, error)
        + GetAllChannelMembersForUser(userID string, allowFromCache bool, includeDeleted bool) (<font color=blue>map</font>[string]string, error)
        + GetChannelsMemberCount(channelIDs []string) (<font color=blue>map</font>[string]int64, error)
        + InvalidateAllChannelMembersForUser(userID string) 
        + GetAllChannelMembersNotifyPropsForChannel(channelID string, allowFromCache bool) (<font color=blue>map</font>[string]model.StringMap, error)
        + InvalidateCacheForChannelMembersNotifyProps(channelID string) 
        + GetMemberForPost(postID string, userID string, includeArchivedChannels bool) (*model.ChannelMember, error)
        + InvalidateMemberCount(channelID string) 
        + GetMemberCountFromCache(channelID string) int64
        + GetFileCount(channelID string) (int64, error)
        + GetMemberCount(channelID string, allowFromCache bool) (int64, error)
        + GetMemberCountsByGroup(ctx context.Context, channelID string, includeTimezones bool) ([]*model.ChannelMemberCountByGroup, error)
        + InvalidatePinnedPostCount(channelID string) 
        + GetPinnedPostCount(channelID string, allowFromCache bool) (int64, error)
        + InvalidateGuestCount(channelID string) 
        + GetGuestCount(channelID string, allowFromCache bool) (int64, error)
        + GetPinnedPosts(channelID string) (*model.PostList, error)
        + RemoveMember(ctx request.CTX, channelID string, userID string) error
        + RemoveMembers(ctx request.CTX, channelID string, userIds []string) error
        + PermanentDeleteMembersByUser(ctx request.CTX, userID string) error
        + PermanentDeleteMembersByChannel(ctx request.CTX, channelID string) error
        + UpdateLastViewedAt(channelIds []string, userID string) (<font color=blue>map</font>[string]int64, error)
        + UpdateLastViewedAtPost(unreadPost *model.Post, userID string, mentionCount int, mentionCountRoot int, urgentMentionCount int, setUnreadCountRoot bool) (*model.ChannelUnreadAt, error)
        + CountPostsAfter(channelID string, timestamp int64, excludedUserID string) (int, int, error)
        + CountUrgentPostsAfter(channelID string, timestamp int64, excludedUserID string) (int, error)
        + IncrementMentionCount(channelID string, userIDs []string, isRoot bool, isUrgent bool) error
        + AnalyticsTypeCount(teamID string, channelType model.ChannelType) (int64, error)
        + GetMembersForUser(teamID string, userID string) (model.ChannelMembers, error)
        + GetTeamMembersForChannel(channelID string) ([]string, error)
        + GetMembersForUserWithPagination(userID string, page int, perPage int) (model.ChannelMembersWithTeamData, error)
        + Autocomplete(rctx request.CTX, userID string, term string, includeDeleted bool, isGuest bool) (model.ChannelListWithTeamData, error)
        + AutocompleteInTeam(rctx request.CTX, teamID string, userID string, term string, includeDeleted bool, isGuest bool) (model.ChannelList, error)
        + AutocompleteInTeamForSearch(teamID string, userID string, term string, includeDeleted bool) (model.ChannelList, error)
        + SearchAllChannels(term string, opts ChannelSearchOpts) (model.ChannelListWithTeamData, int64, error)
        + SearchInTeam(teamID string, term string, includeDeleted bool) (model.ChannelList, error)
        + SearchArchivedInTeam(teamID string, term string, userID string) (model.ChannelList, error)
        + SearchForUserInTeam(userID string, teamID string, term string, includeDeleted bool) (model.ChannelList, error)
        + SearchMore(userID string, teamID string, term string) (model.ChannelList, error)
        + SearchGroupChannels(userID string, term string) (model.ChannelList, error)
        + GetMembersByIds(channelID string, userIds []string) (model.ChannelMembers, error)
        + GetMembersByChannelIds(channelIds []string, userID string) (model.ChannelMembers, error)
        + GetMembersInfoByChannelIds(channelIDs []string) (<font color=blue>map</font>[string][]*model.User, error)
        + AnalyticsDeletedTypeCount(teamID string, channelType model.ChannelType) (int64, error)
        + GetChannelUnread(channelID string, userID string) (*model.ChannelUnread, error)
        + GetChannelsWithUnreadsAndWithMentions(ctx context.Context, channelIDs []string, userID string, userNotifyProps model.StringMap) ([]string, []string, <font color=blue>map</font>[string]int64, error)
        + ClearCaches() 
        + ClearMembersForUserCache() 
        + GetChannelsByScheme(schemeID string, offset int, limit int) (model.ChannelList, error)
        + MigrateChannelMembers(fromChannelID string, fromUserID string) (<font color=blue>map</font>[string]string, error)
        + ResetAllChannelSchemes() error
        + ClearAllCustomRoleAssignments() error
        + CreateInitialSidebarCategories(c request.CTX, userID string, opts *SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, error)
        + GetSidebarCategoriesForTeamForUser(userID string, teamID string) (*model.OrderedSidebarCategories, error)
        + GetSidebarCategories(userID string, opts *SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, error)
        + GetSidebarCategory(categoryID string) (*model.SidebarCategoryWithChannels, error)
        + GetSidebarCategoryOrder(userID string, teamID string) ([]string, error)
        + CreateSidebarCategory(userID string, teamID string, newCategory *model.SidebarCategoryWithChannels) (*model.SidebarCategoryWithChannels, error)
        + UpdateSidebarCategoryOrder(userID string, teamID string, categoryOrder []string) error
        + UpdateSidebarCategories(userID string, teamID string, categories []*model.SidebarCategoryWithChannels) ([]*model.SidebarCategoryWithChannels, []*model.SidebarCategoryWithChannels, error)
        + UpdateSidebarChannelsByPreferences(preferences model.Preferences) error
        + DeleteSidebarChannelsByPreferences(preferences model.Preferences) error
        + DeleteSidebarCategory(categoryID string) error
        + DeleteAllSidebarChannelForChannel(channelID string) error
        + GetAllChannelsForExportAfter(limit int, afterID string) ([]*model.ChannelForExport, error)
        + GetAllDirectChannelsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.DirectChannelForExport, error)
        + GetChannelMembersForExport(userID string, teamID string, includeArchivedChannel bool) ([]*model.ChannelMemberForExport, error)
        + RemoveAllDeactivatedMembers(ctx request.CTX, channelID string) error
        + GetChannelsBatchForIndexing(startTime int64, startChannelID string, limit int) ([]*model.Channel, error)
        + UserBelongsToChannels(userID string, channelIds []string) (bool, error)
        + UpdateMembersRole(channelID string, userIDs []string) error
        + GroupSyncedChannelCount() (int64, error)
        + SetShared(channelId string, shared bool) error
        + GetTeamForChannel(channelID string) (*model.Team, error)

    }
    interface ClusterDiscoveryStore  {
        + Save(discovery *model.ClusterDiscovery) error
        + Delete(discovery *model.ClusterDiscovery) (bool, error)
        + Exists(discovery *model.ClusterDiscovery) (bool, error)
        + GetAll(discoveryType string, clusterName string) ([]*model.ClusterDiscovery, error)
        + SetLastPingAt(discovery *model.ClusterDiscovery) error
        + Cleanup() error

    }
    interface CommandStore  {
        + Save(webhook *model.Command) (*model.Command, error)
        + GetByTrigger(teamID string, trigger string) (*model.Command, error)
        + Get(id string) (*model.Command, error)
        + GetByTeam(teamID string) ([]*model.Command, error)
        + Delete(commandID string, timestamp int64) error
        + PermanentDeleteByTeam(teamID string) error
        + PermanentDeleteByUser(userID string) error
        + Update(hook *model.Command) (*model.Command, error)
        + AnalyticsCommandCount(teamID string) (int64, error)

    }
    interface CommandWebhookStore  {
        + Save(webhook *model.CommandWebhook) (*model.CommandWebhook, error)
        + Get(id string) (*model.CommandWebhook, error)
        + TryUse(id string, limit int) error
        + Cleanup() 

    }
    interface ComplianceStore  {
        + Save(compliance *model.Compliance) (*model.Compliance, error)
        + Update(compliance *model.Compliance) (*model.Compliance, error)
        + Get(id string) (*model.Compliance, error)
        + GetAll(offset int, limit int) (model.Compliances, error)
        + ComplianceExport(compliance *model.Compliance, cursor model.ComplianceExportCursor, limit int) ([]*model.CompliancePost, model.ComplianceExportCursor, error)
        + MessageExport(c request.CTX, cursor model.MessageExportCursor, limit int) ([]*model.MessageExport, model.MessageExportCursor, error)

    }
    interface DesktopTokensStore  {
        + GetUserId(token string, minCreatedAt int64) (*string, error)
        + Insert(token string, createAt int64, userId string) error
        + Delete(token string) error
        + DeleteByUserId(userId string) error
        + DeleteOlderThan(minCreatedAt int64) error

    }
    interface DraftStore  {
        + Upsert(d *model.Draft) (*model.Draft, error)
        + Get(userID string, channelID string, rootID string, includeDeleted bool) (*model.Draft, error)
        + Delete(userID string, channelID string, rootID string) error
        + DeleteDraftsAssociatedWithPost(channelID string, rootID string) error
        + GetDraftsForUser(userID string, teamID string) ([]*model.Draft, error)
        + GetLastCreateAtAndUserIdValuesForEmptyDraftsMigration(createAt int64, userId string) (int64, string, error)
        + DeleteEmptyDraftsByCreateAtAndUserId(createAt int64, userId string) error
        + DeleteOrphanDraftsByCreateAtAndUserId(createAt int64, userId string) error

    }
    interface EmojiStore  {
        + Save(emoji *model.Emoji) (*model.Emoji, error)
        + Get(c request.CTX, id string, allowFromCache bool) (*model.Emoji, error)
        + GetByName(c request.CTX, name string, allowFromCache bool) (*model.Emoji, error)
        + GetMultipleByName(c request.CTX, names []string) ([]*model.Emoji, error)
        + GetList(offset int, limit int, sort string) ([]*model.Emoji, error)
        + Delete(emoji *model.Emoji, timestamp int64) error
        + Search(name string, prefixOnly bool, limit int) ([]*model.Emoji, error)

    }
    class ErrConflict << (S,Aquamarine) >> {
        + Resource string

        + Error() string
        + Unwrap() error
        + IsErrConflict() bool

    }
    class ErrInvalidInput << (S,Aquamarine) >> {
        + Entity string
        + Field string
        + Value any

        + Error() string
        + Wrap(err error) *ErrInvalidInput
        + Unwrap() error
        + InvalidInputInfo() (string, string, any)

    }
    class ErrLimitExceeded << (S,Aquamarine) >> {
        + What string
        + Count int

        + Error() string

    }
    class ErrNotFound << (S,Aquamarine) >> {
        + ID string

        + Wrap(err error) *ErrNotFound
        + Error() string
        + IsErrNotFound() bool

    }
    class ErrNotImplemented << (S,Aquamarine) >> {
        + Error() string

    }
    class ErrOutOfBounds << (S,Aquamarine) >> {
        + Error() string

    }
    class ErrUniqueConstraint << (S,Aquamarine) >> {
        + Columns []string

        + Error() string

    }
    interface FileInfoStore  {
        + Save(ctx request.CTX, info *model.FileInfo) (*model.FileInfo, error)
        + Upsert(rctx request.CTX, info *model.FileInfo) (*model.FileInfo, error)
        + Get(id string) (*model.FileInfo, error)
        + GetFromMaster(id string) (*model.FileInfo, error)
        + GetByIds(ids []string) ([]*model.FileInfo, error)
        + GetByPath(path string) (*model.FileInfo, error)
        + GetForPost(postID string, readFromMaster bool, includeDeleted bool, allowFromCache bool) ([]*model.FileInfo, error)
        + GetForUser(userID string) ([]*model.FileInfo, error)
        + GetWithOptions(page int, perPage int, opt *model.GetFileInfosOptions) ([]*model.FileInfo, error)
        + InvalidateFileInfosForPostCache(postID string, deleted bool) 
        + AttachToPost(c request.CTX, fileID string, postID string, channelID string, creatorID string) error
        + DeleteForPost(c request.CTX, postID string) (string, error)
        + PermanentDelete(c request.CTX, fileID string) error
        + PermanentDeleteBatch(ctx request.CTX, endTime int64, limit int64) (int64, error)
        + PermanentDeleteByUser(ctx request.CTX, userID string) (int64, error)
        + SetContent(ctx request.CTX, fileID string, content string) error
        + Search(ctx request.CTX, paramsList []*model.SearchParams, userID string, teamID string, page int, perPage int) (*model.FileInfoList, error)
        + CountAll() (int64, error)
        + GetFilesBatchForIndexing(startTime int64, startFileID string, includeDeleted bool, limit int) ([]*model.FileForIndexing, error)
        + ClearCaches() 
        + GetStorageUsage(allowFromCache bool, includeDeleted bool) (int64, error)
        + GetUptoNSizeFileTime(n int64) (int64, error)

    }
    interface GroupStore  {
        + Create(group *model.Group) (*model.Group, error)
        + CreateWithUserIds(group *model.GroupWithUserIds) (*model.Group, error)
        + Get(groupID string) (*model.Group, error)
        + GetByName(name string, opts model.GroupSearchOpts) (*model.Group, error)
        + GetByIDs(groupIDs []string) ([]*model.Group, error)
        + GetByRemoteID(remoteID string, groupSource model.GroupSource) (*model.Group, error)
        + GetAllBySource(groupSource model.GroupSource) ([]*model.Group, error)
        + GetByUser(userID string) ([]*model.Group, error)
        + Update(group *model.Group) (*model.Group, error)
        + Delete(groupID string) (*model.Group, error)
        + Restore(groupID string) (*model.Group, error)
        + GetMemberUsers(groupID string) ([]*model.User, error)
        + GetMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetMemberUsersSortedPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions, teammateNameDisplay string) ([]*model.User, error)
        + GetMemberCountWithRestrictions(groupID string, viewRestrictions *model.ViewUsersRestrictions) (int64, error)
        + GetMemberCount(groupID string) (int64, error)
        + GetNonMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetMemberUsersInTeam(groupID string, teamID string) ([]*model.User, error)
        + GetMemberUsersNotInChannel(groupID string, channelID string) ([]*model.User, error)
        + UpsertMember(groupID string, userID string) (*model.GroupMember, error)
        + DeleteMember(groupID string, userID string) (*model.GroupMember, error)
        + PermanentDeleteMembersByUser(userID string) error
        + CreateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, error)
        + GetGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, error)
        + GetAllGroupSyncablesByGroupId(groupID string, syncableType model.GroupSyncableType) ([]*model.GroupSyncable, error)
        + UpdateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, error)
        + DeleteGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, error)
        + TeamMembersToAdd(since int64, teamID *string, includeRemovedMembers bool) ([]*model.UserTeamIDPair, error)
        + ChannelMembersToAdd(since int64, channelID *string, includeRemovedMembers bool) ([]*model.UserChannelIDPair, error)
        + TeamMembersToRemove(teamID *string) ([]*model.TeamMember, error)
        + ChannelMembersToRemove(channelID *string) ([]*model.ChannelMember, error)
        + GetGroupsByChannel(channelID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, error)
        + CountGroupsByChannel(channelID string, opts model.GroupSearchOpts) (int64, error)
        + GetGroupsByTeam(teamID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, error)
        + GetGroupsAssociatedToChannelsByTeam(teamID string, opts model.GroupSearchOpts) (<font color=blue>map</font>[string][]*model.GroupWithSchemeAdmin, error)
        + CountGroupsByTeam(teamID string, opts model.GroupSearchOpts) (int64, error)
        + GetGroups(page int, perPage int, opts model.GroupSearchOpts, viewRestrictions *model.ViewUsersRestrictions) ([]*model.Group, error)
        + TeamMembersMinusGroupMembers(teamID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, error)
        + CountTeamMembersMinusGroupMembers(teamID string, groupIDs []string) (int64, error)
        + ChannelMembersMinusGroupMembers(channelID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, error)
        + CountChannelMembersMinusGroupMembers(channelID string, groupIDs []string) (int64, error)
        + AdminRoleGroupsForSyncableMember(userID string, syncableID string, syncableType model.GroupSyncableType) ([]string, error)
        + PermittedSyncableAdmins(syncableID string, syncableType model.GroupSyncableType) ([]string, error)
        + GroupCount() (int64, error)
        + GroupCountBySource(source model.GroupSource) (int64, error)
        + GroupTeamCount() (int64, error)
        + GroupChannelCount() (int64, error)
        + GroupMemberCount() (int64, error)
        + DistinctGroupMemberCount() (int64, error)
        + DistinctGroupMemberCountForSource(source model.GroupSource) (int64, error)
        + GroupCountWithAllowReference() (int64, error)
        + UpsertMembers(groupID string, userIDs []string) ([]*model.GroupMember, error)
        + DeleteMembers(groupID string, userIDs []string) ([]*model.GroupMember, error)
        + GetMember(groupID string, userID string) (*model.GroupMember, error)

    }
    interface JobStore  {
        + Save(job *model.Job) (*model.Job, error)
        + SaveOnce(job *model.Job) (*model.Job, error)
        + UpdateOptimistically(job *model.Job, currentStatus string) (bool, error)
        + UpdateStatus(id string, status string) (*model.Job, error)
        + UpdateStatusOptimistically(id string, currentStatus string, newStatus string) (bool, error)
        + Get(c request.CTX, id string) (*model.Job, error)
        + GetAllByType(c request.CTX, jobType string) ([]*model.Job, error)
        + GetAllByTypeAndStatus(c request.CTX, jobType string, status string) ([]*model.Job, error)
        + GetAllByTypePage(c request.CTX, jobType string, offset int, limit int) ([]*model.Job, error)
        + GetAllByTypesPage(c request.CTX, jobTypes []string, offset int, limit int) ([]*model.Job, error)
        + GetAllByStatus(c request.CTX, status string) ([]*model.Job, error)
        + GetNewestJobByStatusAndType(status string, jobType string) (*model.Job, error)
        + GetNewestJobByStatusesAndType(statuses []string, jobType string) (*model.Job, error)
        + GetCountByStatusAndType(status string, jobType string) (int64, error)
        + Delete(id string) (string, error)
        + Cleanup(expiryTime int64, batchSize int) error

    }
    interface LicenseStore  {
        + Save(license *model.LicenseRecord) error
        + Get(c request.CTX, id string) (*model.LicenseRecord, error)
        + GetAll() ([]*model.LicenseRecord, error)

    }
    interface LinkMetadataStore  {
        + Save(linkMetadata *model.LinkMetadata) (*model.LinkMetadata, error)
        + Get(url string, timestamp int64) (*model.LinkMetadata, error)

    }
    interface NotifyAdminStore  {
        + Save(data *model.NotifyAdminData) (*model.NotifyAdminData, error)
        + GetDataByUserIdAndFeature(userId string, feature model.MattermostFeature) ([]*model.NotifyAdminData, error)
        + Get(trial bool) ([]*model.NotifyAdminData, error)
        + DeleteBefore(trial bool, now int64) error
        + Update(userId string, requiredPlan string, requiredFeature model.MattermostFeature, now int64) error

    }
    interface OAuthStore  {
        + SaveApp(app *model.OAuthApp) (*model.OAuthApp, error)
        + UpdateApp(app *model.OAuthApp) (*model.OAuthApp, error)
        + GetApp(id string) (*model.OAuthApp, error)
        + GetAppByUser(userID string, offset int, limit int) ([]*model.OAuthApp, error)
        + GetApps(offset int, limit int) ([]*model.OAuthApp, error)
        + GetAuthorizedApps(userID string, offset int, limit int) ([]*model.OAuthApp, error)
        + DeleteApp(id string) error
        + SaveAuthData(authData *model.AuthData) (*model.AuthData, error)
        + GetAuthData(code string) (*model.AuthData, error)
        + RemoveAuthData(code string) error
        + RemoveAuthDataByClientId(clientId string, userId string) error
        + RemoveAuthDataByUserId(userId string) error
        + PermanentDeleteAuthDataByUser(userID string) error
        + SaveAccessData(accessData *model.AccessData) (*model.AccessData, error)
        + UpdateAccessData(accessData *model.AccessData) (*model.AccessData, error)
        + GetAccessData(token string) (*model.AccessData, error)
        + GetAccessDataByUserForApp(userID string, clientId string) ([]*model.AccessData, error)
        + GetAccessDataByRefreshToken(token string) (*model.AccessData, error)
        + GetPreviousAccessData(userID string, clientId string) (*model.AccessData, error)
        + RemoveAccessData(token string) error
        + RemoveAllAccessData() error

    }
    interface OutgoingOAuthConnectionStore  {
        + SaveConnection(c request.CTX, conn *model.OutgoingOAuthConnection) (*model.OutgoingOAuthConnection, error)
        + UpdateConnection(c request.CTX, conn *model.OutgoingOAuthConnection) (*model.OutgoingOAuthConnection, error)
        + GetConnection(c request.CTX, id string) (*model.OutgoingOAuthConnection, error)
        + GetConnections(c request.CTX, filters model.OutgoingOAuthConnectionGetConnectionsFilter) ([]*model.OutgoingOAuthConnection, error)
        + DeleteConnection(c request.CTX, id string) error

    }
    interface PluginStore  {
        + SaveOrUpdate(keyVal *model.PluginKeyValue) (*model.PluginKeyValue, error)
        + CompareAndSet(keyVal *model.PluginKeyValue, oldValue []byte) (bool, error)
        + CompareAndDelete(keyVal *model.PluginKeyValue, oldValue []byte) (bool, error)
        + SetWithOptions(pluginID string, key string, value []byte, options model.PluginKVSetOptions) (bool, error)
        + Get(pluginID string, key string) (*model.PluginKeyValue, error)
        + Delete(pluginID string, key string) error
        + DeleteAllForPlugin(PluginID string) error
        + DeleteAllExpired() error
        + List(pluginID string, page int, perPage int) ([]string, error)

    }
    interface PostAcknowledgementStore  {
        + Get(postID string, userID string) (*model.PostAcknowledgement, error)
        + GetForPost(postID string) ([]*model.PostAcknowledgement, error)
        + GetForPosts(postIds []string) ([]*model.PostAcknowledgement, error)
        + Save(postID string, userID string, acknowledgedAt int64) (*model.PostAcknowledgement, error)
        + Delete(acknowledgement *model.PostAcknowledgement) error

    }
    interface PostPersistentNotificationStore  {
        + Get(params model.GetPersistentNotificationsPostsParams) ([]*model.PostPersistentNotifications, error)
        + GetSingle(postID string) (*model.PostPersistentNotifications, error)
        + UpdateLastActivity(postIds []string) error
        + Delete(postIds []string) error
        + DeleteExpired(maxSentCount int16) error
        + DeleteByChannel(channelIds []string) error
        + DeleteByTeam(teamIds []string) error

    }
    interface PostPriorityStore  {
        + GetForPost(postId string) (*model.PostPriority, error)
        + GetForPosts(ids []string) ([]*model.PostPriority, error)

    }
    class PostReminderMetadata << (S,Aquamarine) >> {
        + ChannelId string
        + TeamName string
        + UserLocale string
        + Username string

    }
    interface PostStore  {
        + SaveMultiple(posts []*model.Post) ([]*model.Post, int, error)
        + Save(rctx request.CTX, post *model.Post) (*model.Post, error)
        + Update(rctx request.CTX, newPost *model.Post, oldPost *model.Post) (*model.Post, error)
        + Get(ctx context.Context, id string, opts model.GetPostsOptions, userID string, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetSingle(id string, inclDeleted bool) (*model.Post, error)
        + Delete(rctx request.CTX, postID string, timestamp int64, deleteByID string) error
        + PermanentDeleteByUser(rctx request.CTX, userID string) error
        + PermanentDeleteByChannel(rctx request.CTX, channelID string) error
        + GetPosts(options model.GetPostsOptions, allowFromCache bool, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetFlaggedPosts(userID string, offset int, limit int) (*model.PostList, error)
        + GetFlaggedPostsForTeam(userID string, teamID string, offset int, limit int) (*model.PostList, error)
        + GetFlaggedPostsForChannel(userID string, channelID string, offset int, limit int) (*model.PostList, error)
        + GetPostsBefore(options model.GetPostsOptions, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsAfter(options model.GetPostsOptions, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsSince(options model.GetPostsSinceOptions, allowFromCache bool, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsByThread(threadID string, since int64) ([]*model.Post, error)
        + GetPostAfterTime(channelID string, timestamp int64, collapsedThreads bool) (*model.Post, error)
        + GetPostIdAfterTime(channelID string, timestamp int64, collapsedThreads bool) (string, error)
        + GetPostIdBeforeTime(channelID string, timestamp int64, collapsedThreads bool) (string, error)
        + GetEtag(channelID string, allowFromCache bool, collapsedThreads bool) string
        + Search(teamID string, userID string, params *model.SearchParams) (*model.PostList, error)
        + AnalyticsUserCountsWithPostsByDay(teamID string) (model.AnalyticsRows, error)
        + AnalyticsPostCountsByDay(options *model.AnalyticsPostCountsOptions) (model.AnalyticsRows, error)
        + AnalyticsPostCount(options *model.PostCountOptions) (int64, error)
        + ClearCaches() 
        + InvalidateLastPostTimeCache(channelID string) 
        + GetPostsCreatedAt(channelID string, timestamp int64) ([]*model.Post, error)
        + Overwrite(rctx request.CTX, post *model.Post) (*model.Post, error)
        + OverwriteMultiple(posts []*model.Post) ([]*model.Post, int, error)
        + GetPostsByIds(postIds []string) ([]*model.Post, error)
        + GetEditHistoryForPost(postId string) ([]*model.Post, error)
        + GetPostsBatchForIndexing(startTime int64, startPostID string, limit int) ([]*model.PostForIndexing, error)
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + GetOldest() (*model.Post, error)
        + GetMaxPostSize() int
        + GetParentsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.PostForExport, error)
        + GetRepliesForExport(parentID string) ([]*model.ReplyForExport, error)
        + GetDirectPostParentsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.DirectPostForExport, error)
        + SearchPostsForUser(rctx request.CTX, paramsList []*model.SearchParams, userID string, teamID string, page int, perPage int) (*model.PostSearchResults, error)
        + GetOldestEntityCreationTime() (int64, error)
        + HasAutoResponsePostByUserSince(options model.GetPostsSinceOptions, userId string) (bool, error)
        + GetPostsSinceForSync(options model.GetPostsSinceForSyncOptions, cursor model.GetPostsSinceForSyncCursor, limit int) ([]*model.Post, model.GetPostsSinceForSyncCursor, error)
        + SetPostReminder(reminder *model.PostReminder) error
        + GetPostReminders(now int64) ([]*model.PostReminder, error)
        + GetPostReminderMetadata(postID string) (*PostReminderMetadata, error)
        + GetNthRecentPostTime(n int64) (int64, error)

    }
    interface PreferenceStore  {
        + Save(preferences model.Preferences) error
        + GetCategory(userID string, category string) (model.Preferences, error)
        + GetCategoryAndName(category string, nane string) (model.Preferences, error)
        + Get(userID string, category string, name string) (*model.Preference, error)
        + GetAll(userID string) (model.Preferences, error)
        + Delete(userID string, category string, name string) error
        + DeleteCategory(userID string, category string) error
        + DeleteCategoryAndName(category string, name string) error
        + PermanentDeleteByUser(userID string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + CleanupFlagsBatch(limit int64) (int64, error)

    }
    interface ProductNoticesStore  {
        + View(userID string, notices []string) error
        + Clear(notices []string) error
        + ClearOldNotices(currentNotices model.ProductNotices) error
        + GetViews(userID string) ([]model.ProductNoticeViewState, error)

    }
    interface ReactionStore  {
        + Save(reaction *model.Reaction) (*model.Reaction, error)
        + Delete(reaction *model.Reaction) (*model.Reaction, error)
        + GetForPost(postID string, allowFromCache bool) ([]*model.Reaction, error)
        + GetForPostSince(postId string, since int64, excludeRemoteId string, inclDeleted bool) ([]*model.Reaction, error)
        + GetUniqueCountForPost(postId string) (int, error)
        + ExistsOnPost(postId string, emojiName string) (bool, error)
        + DeleteAllWithEmojiName(emojiName string) error
        + BulkGetForPosts(postIds []string) ([]*model.Reaction, error)
        + DeleteOrphanedRowsByIds(r *model.RetentionIdsForDeletion) error
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + PermanentDeleteByUser(userID string) error

    }
    interface RemoteClusterStore  {
        + Save(rc *model.RemoteCluster) (*model.RemoteCluster, error)
        + Update(rc *model.RemoteCluster) (*model.RemoteCluster, error)
        + Delete(remoteClusterId string) (bool, error)
        + Get(remoteClusterId string) (*model.RemoteCluster, error)
        + GetByPluginID(pluginID string) (*model.RemoteCluster, error)
        + GetAll(filter model.RemoteClusterQueryFilter) ([]*model.RemoteCluster, error)
        + UpdateTopics(remoteClusterId string, topics string) (*model.RemoteCluster, error)
        + SetLastPingAt(remoteClusterId string) error

    }
    interface RetentionPolicyStore  {
        + Save(policy *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + Patch(patch *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + Get(id string) (*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + GetAll(offset int, limit int) ([]*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + GetCount() (int64, error)
        + Delete(id string) error
        + GetChannels(policyId string, offset int, limit int) (model.ChannelListWithTeamData, error)
        + GetChannelsCount(policyId string) (int64, error)
        + AddChannels(policyId string, channelIds []string) error
        + RemoveChannels(policyId string, channelIds []string) error
        + GetTeams(policyId string, offset int, limit int) ([]*model.Team, error)
        + GetTeamsCount(policyId string) (int64, error)
        + AddTeams(policyId string, teamIds []string) error
        + RemoveTeams(policyId string, teamIds []string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + GetTeamPoliciesForUser(userID string, offset int, limit int) ([]*model.RetentionPolicyForTeam, error)
        + GetTeamPoliciesCountForUser(userID string) (int64, error)
        + GetChannelPoliciesForUser(userID string, offset int, limit int) ([]*model.RetentionPolicyForChannel, error)
        + GetChannelPoliciesCountForUser(userID string) (int64, error)
        + GetIdsForDeletionByTableName(tableName string, limit int) ([]*model.RetentionIdsForDeletion, error)

    }
    interface RoleStore  {
        + Save(role *model.Role) (*model.Role, error)
        + Get(roleID string) (*model.Role, error)
        + GetAll() ([]*model.Role, error)
        + GetByName(ctx context.Context, name string) (*model.Role, error)
        + GetByNames(names []string) ([]*model.Role, error)
        + Delete(roleID string) (*model.Role, error)
        + PermanentDeleteAll() error
        + ChannelHigherScopedPermissions(roleNames []string) (<font color=blue>map</font>[string]*model.RolePermissions, error)
        + AllChannelSchemeRoles() ([]*model.Role, error)
        + ChannelRolesUnderTeamRole(roleName string) ([]*model.Role, error)

    }
    interface SchemeStore  {
        + Save(scheme *model.Scheme) (*model.Scheme, error)
        + Get(schemeID string) (*model.Scheme, error)
        + GetByName(schemeName string) (*model.Scheme, error)
        + GetAllPage(scope string, offset int, limit int) ([]*model.Scheme, error)
        + Delete(schemeID string) (*model.Scheme, error)
        + PermanentDeleteAll() error
        + CountByScope(scope string) (int64, error)
        + CountWithoutPermission(scope string, permissionID string, roleScope model.RoleScope, roleType model.RoleType) (int64, error)

    }
    interface SessionStore  {
        + Get(c request.CTX, sessionIDOrToken string) (*model.Session, error)
        + Save(c request.CTX, session *model.Session) (*model.Session, error)
        + GetSessions(c request.CTX, userID string) ([]*model.Session, error)
        + GetSessionsWithActiveDeviceIds(userID string) ([]*model.Session, error)
        + GetSessionsExpired(thresholdMillis int64, mobileOnly bool, unnotifiedOnly bool) ([]*model.Session, error)
        + UpdateExpiredNotify(sessionid string, notified bool) error
        + Remove(sessionIDOrToken string) error
        + RemoveAllSessions() error
        + PermanentDeleteSessionsByUser(teamID string) error
        + UpdateExpiresAt(sessionID string, timestamp int64) error
        + UpdateLastActivityAt(sessionID string, timestamp int64) error
        + UpdateRoles(userID string, roles string) (string, error)
        + UpdateDeviceId(id string, deviceID string, expiresAt int64) (string, error)
        + UpdateProps(session *model.Session) error
        + AnalyticsSessionCount() (int64, error)
        + Cleanup(expiryTime int64, batchSize int64) error

    }
    interface SharedChannelStore  {
        + Save(sc *model.SharedChannel) (*model.SharedChannel, error)
        + Get(channelId string) (*model.SharedChannel, error)
        + HasChannel(channelID string) (bool, error)
        + GetAll(offset int, limit int, opts model.SharedChannelFilterOpts) ([]*model.SharedChannel, error)
        + GetAllCount(opts model.SharedChannelFilterOpts) (int64, error)
        + Update(sc *model.SharedChannel) (*model.SharedChannel, error)
        + Delete(channelId string) (bool, error)
        + SaveRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + UpdateRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + GetRemote(id string) (*model.SharedChannelRemote, error)
        + HasRemote(channelID string, remoteId string) (bool, error)
        + GetRemoteForUser(remoteId string, userId string) (*model.RemoteCluster, error)
        + GetRemoteByIds(channelId string, remoteId string) (*model.SharedChannelRemote, error)
        + GetRemotes(opts model.SharedChannelRemoteFilterOpts) ([]*model.SharedChannelRemote, error)
        + UpdateRemoteCursor(id string, cursor model.GetPostsSinceForSyncCursor) error
        + DeleteRemote(remoteId string) (bool, error)
        + GetRemotesStatus(channelId string) ([]*model.SharedChannelRemoteStatus, error)
        + SaveUser(remote *model.SharedChannelUser) (*model.SharedChannelUser, error)
        + GetSingleUser(userID string, channelID string, remoteID string) (*model.SharedChannelUser, error)
        + GetUsersForUser(userID string) ([]*model.SharedChannelUser, error)
        + GetUsersForSync(filter model.GetUsersForSyncFilter) ([]*model.User, error)
        + UpdateUserLastSyncAt(userID string, channelID string, remoteID string) error
        + SaveAttachment(remote *model.SharedChannelAttachment) (*model.SharedChannelAttachment, error)
        + UpsertAttachment(remote *model.SharedChannelAttachment) (string, error)
        + GetAttachment(fileId string, remoteId string) (*model.SharedChannelAttachment, error)
        + UpdateAttachmentLastSyncAt(id string, syncTime int64) error

    }
    class SidebarCategorySearchOpts << (S,Aquamarine) >> {
        + TeamID string
        + ExcludeTeam bool
        + Type model.SidebarCategoryType

    }
    interface StatusStore  {
        + SaveOrUpdate(status *model.Status) error
        + Get(userID string) (*model.Status, error)
        + GetByIds(userIds []string) ([]*model.Status, error)
        + ResetAll() error
        + GetTotalActiveUsersCount() (int64, error)
        + UpdateLastActivityAt(userID string, lastActivityAt int64) error
        + UpdateExpiredDNDStatuses() ([]*model.Status, error)

    }
    interface Store  {
        + Team() TeamStore
        + Channel() ChannelStore
        + Post() PostStore
        + RetentionPolicy() RetentionPolicyStore
        + Thread() ThreadStore
        + User() UserStore
        + Bot() BotStore
        + Audit() AuditStore
        + ClusterDiscovery() ClusterDiscoveryStore
        + RemoteCluster() RemoteClusterStore
        + Compliance() ComplianceStore
        + Session() SessionStore
        + OAuth() OAuthStore
        + OutgoingOAuthConnection() OutgoingOAuthConnectionStore
        + System() SystemStore
        + Webhook() WebhookStore
        + Command() CommandStore
        + CommandWebhook() CommandWebhookStore
        + Preference() PreferenceStore
        + License() LicenseStore
        + Token() TokenStore
        + Emoji() EmojiStore
        + Status() StatusStore
        + FileInfo() FileInfoStore
        + UploadSession() UploadSessionStore
        + Reaction() ReactionStore
        + Role() RoleStore
        + Scheme() SchemeStore
        + Job() JobStore
        + UserAccessToken() UserAccessTokenStore
        + ChannelMemberHistory() ChannelMemberHistoryStore
        + Plugin() PluginStore
        + TermsOfService() TermsOfServiceStore
        + ProductNotices() ProductNoticesStore
        + Group() GroupStore
        + UserTermsOfService() UserTermsOfServiceStore
        + LinkMetadata() LinkMetadataStore
        + SharedChannel() SharedChannelStore
        + Draft() DraftStore
        + MarkSystemRanUnitTests() 
        + Close() 
        + LockToMaster() 
        + UnlockFromMaster() 
        + DropAllTables() 
        + RecycleDBConnections(d time.Duration) 
        + GetDBSchemaVersion() (int, error)
        + GetLocalSchemaVersion() (int, error)
        + GetAppliedMigrations() ([]model.AppliedMigration, error)
        + GetDbVersion(numerical bool) (string, error)
        + GetInternalMasterDB() *sql.DB
        + GetInternalReplicaDB() *sql.DB
        + TotalMasterDbConnections() int
        + TotalReadDbConnections() int
        + TotalSearchDbConnections() int
        + ReplicaLagTime() error
        + ReplicaLagAbs() error
        + CheckIntegrity() <font color=blue>chan</font> model.IntegrityCheckResult
        + SetContext(context context.Context) 
        + Context() context.Context
        + Logger() mlog.LoggerIFace
        + NotifyAdmin() NotifyAdminStore
        + PostPriority() PostPriorityStore
        + PostAcknowledgement() PostAcknowledgementStore
        + PostPersistentNotification() PostPersistentNotificationStore
        + TrueUpReview() TrueUpReviewStore
        + DesktopTokens() DesktopTokensStore

    }
    class StoreResult << (S,Aquamarine) >> {
        + Data T
        + NErr error

    }
    interface SystemStore  {
        + Save(system *model.System) error
        + SaveOrUpdate(system *model.System) error
        + Update(system *model.System) error
        + Get() (model.StringMap, error)
        + GetByName(name string) (*model.System, error)
        + PermanentDeleteByName(name string) (*model.System, error)
        + InsertIfExists(system *model.System) (*model.System, error)

    }
    interface TeamStore  {
        + Save(team *model.Team) (*model.Team, error)
        + Update(team *model.Team) (*model.Team, error)
        + Get(id string) (*model.Team, error)
        + GetMany(ids []string) ([]*model.Team, error)
        + GetByName(name string) (*model.Team, error)
        + GetByNames(name []string) ([]*model.Team, error)
        + SearchAll(opts *model.TeamSearch) ([]*model.Team, error)
        + SearchAllPaged(opts *model.TeamSearch) ([]*model.Team, int64, error)
        + SearchOpen(opts *model.TeamSearch) ([]*model.Team, error)
        + SearchPrivate(opts *model.TeamSearch) ([]*model.Team, error)
        + GetAll() ([]*model.Team, error)
        + GetAllPage(offset int, limit int, opts *model.TeamSearch) ([]*model.Team, error)
        + GetAllPrivateTeamListing() ([]*model.Team, error)
        + GetAllTeamListing() ([]*model.Team, error)
        + GetTeamsByUserId(userID string) ([]*model.Team, error)
        + GetByInviteId(inviteID string) (*model.Team, error)
        + GetByEmptyInviteID() ([]*model.Team, error)
        + PermanentDelete(teamID string) error
        + AnalyticsTeamCount(opts *model.TeamSearch) (int64, error)
        + SaveMultipleMembers(members []*model.TeamMember, maxUsersPerTeam int) ([]*model.TeamMember, error)
        + SaveMember(rctx request.CTX, member *model.TeamMember, maxUsersPerTeam int) (*model.TeamMember, error)
        + UpdateMember(rctx request.CTX, member *model.TeamMember) (*model.TeamMember, error)
        + UpdateMultipleMembers(members []*model.TeamMember) ([]*model.TeamMember, error)
        + GetMember(c request.CTX, teamID string, userID string) (*model.TeamMember, error)
        + GetMembers(teamID string, offset int, limit int, teamMembersGetOptions *model.TeamMembersGetOptions) ([]*model.TeamMember, error)
        + GetMembersByIds(teamID string, userIds []string, restrictions *model.ViewUsersRestrictions) ([]*model.TeamMember, error)
        + GetTotalMemberCount(teamID string, restrictions *model.ViewUsersRestrictions) (int64, error)
        + GetActiveMemberCount(teamID string, restrictions *model.ViewUsersRestrictions) (int64, error)
        + GetTeamsForUser(c request.CTX, userID string, excludeTeamID string, includeDeleted bool) ([]*model.TeamMember, error)
        + GetTeamsForUserWithPagination(userID string, page int, perPage int) ([]*model.TeamMember, error)
        + GetChannelUnreadsForAllTeams(excludeTeamID string, userID string) ([]*model.ChannelUnread, error)
        + GetChannelUnreadsForTeam(teamID string, userID string) ([]*model.ChannelUnread, error)
        + RemoveMember(rctx request.CTX, teamID string, userID string) error
        + RemoveMembers(rctx request.CTX, teamID string, userIds []string) error
        + RemoveAllMembersByTeam(teamID string) error
        + RemoveAllMembersByUser(ctx request.CTX, userID string) error
        + UpdateLastTeamIconUpdate(teamID string, curTime int64) error
        + GetTeamsByScheme(schemeID string, offset int, limit int) ([]*model.Team, error)
        + MigrateTeamMembers(fromTeamID string, fromUserID string) (<font color=blue>map</font>[string]string, error)
        + ResetAllTeamSchemes() error
        + ClearAllCustomRoleAssignments() error
        + AnalyticsGetTeamCountForScheme(schemeID string) (int64, error)
        + GetAllForExportAfter(limit int, afterID string) ([]*model.TeamForExport, error)
        + GetTeamMembersForExport(userID string) ([]*model.TeamMemberForExport, error)
        + UserBelongsToTeams(userID string, teamIds []string) (bool, error)
        + GetUserTeamIds(userID string, allowFromCache bool) ([]string, error)
        + InvalidateAllTeamIdsForUser(userID string) 
        + ClearCaches() 
        + UpdateMembersRole(teamID string, userIDs []string) error
        + GroupSyncedTeamCount() (int64, error)
        + GetCommonTeamIDsForTwoUsers(userID string, otherUserID string) ([]string, error)
        + GetCommonTeamIDsForMultipleUsers(userIDs []string) ([]string, error)

    }
    interface TermsOfServiceStore  {
        + Save(termsOfService *model.TermsOfService) (*model.TermsOfService, error)
        + GetLatest(allowFromCache bool) (*model.TermsOfService, error)
        + Get(id string, allowFromCache bool) (*model.TermsOfService, error)

    }
    class ThreadMembershipOpts << (S,Aquamarine) >> {
        + Following bool
        + IncrementMentions bool
        + UpdateFollowing bool
        + UpdateViewedTimestamp bool
        + UpdateParticipants bool

    }
    interface ThreadStore  {
        + GetThreadFollowers(threadID string, fetchOnlyActive bool) ([]string, error)
        + Get(id string) (*model.Thread, error)
        + GetTotalUnreadThreads(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalThreads(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadMentions(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadUrgentMentions(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetThreadsForUser(userId string, teamID string, opts model.GetUserThreadsOpts) ([]*model.ThreadResponse, error)
        + GetThreadForUser(threadMembership *model.ThreadMembership, extended bool, postPriorityIsEnabled bool) (*model.ThreadResponse, error)
        + GetTeamsUnreadForUser(userID string, teamIDs []string, includeUrgentMentionCount bool) (<font color=blue>map</font>[string]*model.TeamUnread, error)
        + MarkAllAsRead(userID string, threadIds []string) error
        + MarkAllAsReadByTeam(userID string, teamID string) error
        + MarkAllAsReadByChannels(userID string, channelIDs []string) error
        + MarkAsRead(userID string, threadID string, timestamp int64) error
        + UpdateMembership(membership *model.ThreadMembership) (*model.ThreadMembership, error)
        + GetMembershipsForUser(userId string, teamID string) ([]*model.ThreadMembership, error)
        + GetMembershipForUser(userId string, postID string) (*model.ThreadMembership, error)
        + DeleteMembershipForUser(userId string, postID string) error
        + MaintainMembership(userID string, postID string, opts ThreadMembershipOpts) (*model.ThreadMembership, error)
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + PermanentDeleteBatchThreadMembershipsForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + DeleteOrphanedRows(limit int) (int64, error)
        + GetThreadUnreadReplyCount(threadMembership *model.ThreadMembership) (int64, error)
        + DeleteMembershipsForChannel(userID string, channelID string) error

    }
    interface TokenStore  {
        + Save(recovery *model.Token) error
        + Delete(token string) error
        + GetByToken(token string) (*model.Token, error)
        + Cleanup(expiryTime int64) 
        + GetAllTokensByType(tokenType string) ([]*model.Token, error)
        + RemoveAllTokensByType(tokenType string) error

    }
    interface TrueUpReviewStore  {
        + GetTrueUpReviewStatus(dueDate int64) (*model.TrueUpReviewStatus, error)
        + CreateTrueUpReviewStatusRecord(reviewStatus *model.TrueUpReviewStatus) (*model.TrueUpReviewStatus, error)
        + Update(reviewStatus *model.TrueUpReviewStatus) (*model.TrueUpReviewStatus, error)

    }
    interface UploadSessionStore  {
        + Save(session *model.UploadSession) (*model.UploadSession, error)
        + Update(session *model.UploadSession) error
        + Get(c request.CTX, id string) (*model.UploadSession, error)
        + GetForUser(userID string) ([]*model.UploadSession, error)
        + Delete(id string) error

    }
    interface UserAccessTokenStore  {
        + Save(token *model.UserAccessToken) (*model.UserAccessToken, error)
        + DeleteAllForUser(userID string) error
        + Delete(tokenID string) error
        + Get(tokenID string) (*model.UserAccessToken, error)
        + GetAll(offset int, limit int) ([]*model.UserAccessToken, error)
        + GetByToken(tokenString string) (*model.UserAccessToken, error)
        + GetByUser(userID string, page int, perPage int) ([]*model.UserAccessToken, error)
        + Search(term string) ([]*model.UserAccessToken, error)
        + UpdateTokenEnable(tokenID string) error
        + UpdateTokenDisable(tokenID string) error

    }
    class UserGetByIdsOpts << (S,Aquamarine) >> {
        + IsAdmin bool
        + ViewRestrictions *model.ViewUsersRestrictions
        + Since int64

    }
    interface UserStore  {
        + Save(rctx request.CTX, user *model.User) (*model.User, error)
        + Update(rctx request.CTX, user *model.User, allowRoleUpdate bool) (*model.UserUpdate, error)
        + UpdateNotifyProps(userID string, props <font color=blue>map</font>[string]string) error
        + UpdateLastPictureUpdate(userID string) error
        + ResetLastPictureUpdate(userID string) error
        + UpdatePassword(userID string, newPassword string) error
        + UpdateUpdateAt(userID string) (int64, error)
        + UpdateAuthData(userID string, service string, authData *string, email string, resetMfa bool) (string, error)
        + UpdateLastLogin(userID string, lastLogin int64) error
        + ResetAuthDataToEmailForUsers(service string, userIDs []string, includeDeleted bool, dryRun bool) (int, error)
        + UpdateMfaSecret(userID string, secret string) error
        + UpdateMfaActive(userID string, active bool) error
        + Get(ctx context.Context, id string) (*model.User, error)
        + GetMany(ctx context.Context, ids []string) ([]*model.User, error)
        + GetAll() ([]*model.User, error)
        + ClearCaches() 
        + InvalidateProfilesInChannelCacheByUser(userID string) 
        + InvalidateProfilesInChannelCache(channelID string) 
        + GetProfilesInChannel(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesInChannelByStatus(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesInChannelByAdmin(options *model.UserGetOptions) ([]*model.User, error)
        + GetAllProfilesInChannel(ctx context.Context, channelID string, allowFromCache bool) (<font color=blue>map</font>[string]*model.User, error)
        + GetProfilesNotInChannel(teamID string, channelId string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfilesWithoutTeam(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesByUsernames(usernames []string, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetAllProfiles(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfiles(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfileByIds(ctx context.Context, userIds []string, options *UserGetByIdsOpts, allowFromCache bool) ([]*model.User, error)
        + GetProfileByGroupChannelIdsForUser(userID string, channelIds []string) (<font color=blue>map</font>[string][]*model.User, error)
        + InvalidateProfileCacheForUser(userID string) 
        + GetByEmail(email string) (*model.User, error)
        + GetByRemoteID(remoteID string) (*model.User, error)
        + GetByAuth(authData *string, authService string) (*model.User, error)
        + GetAllUsingAuthService(authService string) ([]*model.User, error)
        + GetAllNotInAuthService(authServices []string) ([]*model.User, error)
        + GetByUsername(username string) (*model.User, error)
        + GetForLogin(loginID string, allowSignInWithUsername bool, allowSignInWithEmail bool) (*model.User, error)
        + VerifyEmail(userID string, email string) (string, error)
        + GetEtagForAllProfiles() string
        + GetEtagForProfiles(teamID string) string
        + UpdateFailedPasswordAttempts(userID string, attempts int) error
        + GetSystemAdminProfiles() (<font color=blue>map</font>[string]*model.User, error)
        + PermanentDelete(userID string) error
        + AnalyticsActiveCount(timestamp int64, options model.UserCountOptions) (int64, error)
        + AnalyticsActiveCountForPeriod(startTime int64, endTime int64, options model.UserCountOptions) (int64, error)
        + GetUnreadCount(userID string, isCRTEnabled bool) (int64, error)
        + GetUnreadCountForChannel(userID string, channelID string) (int64, error)
        + GetAnyUnreadPostCountForChannel(userID string, channelID string) (int64, error)
        + GetRecentlyActiveUsersForTeam(teamID string, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetNewUsersForTeam(teamID string, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + Search(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInTeam(notInTeamID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchInChannel(channelID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInChannel(teamID string, channelID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchWithoutTeam(term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + AnalyticsGetInactiveUsersCount() (int64, error)
        + AnalyticsGetExternalUsers(hostDomain string) (bool, error)
        + AnalyticsGetSystemAdminCount() (int64, error)
        + AnalyticsGetGuestCount() (int64, error)
        + GetProfilesNotInTeam(teamID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetEtagForProfilesNotInTeam(teamID string) string
        + ClearAllCustomRoleAssignments() error
        + InferSystemInstallDate() (int64, error)
        + GetAllAfter(limit int, afterID string) ([]*model.User, error)
        + GetUsersBatchForIndexing(startTime int64, startFileID string, limit int) ([]*model.UserForIndexing, error)
        + Count(options model.UserCountOptions) (int64, error)
        + GetTeamGroupUsers(teamID string) ([]*model.User, error)
        + GetChannelGroupUsers(channelID string) ([]*model.User, error)
        + PromoteGuestToUser(userID string) error
        + DemoteUserToGuest(userID string) (*model.User, error)
        + DeactivateGuests() ([]string, error)
        + AutocompleteUsersInChannel(rctx request.CTX, teamID string, channelID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInChannel, error)
        + GetKnownUsers(userID string) ([]string, error)
        + IsEmpty(excludeBots bool) (bool, error)
        + GetUsersWithInvalidEmails(page int, perPage int, restrictedDomains string) ([]*model.User, error)
        + InsertUsers(users []*model.User) error
        + RefreshPostStatsForUsers() error
        + GetUserReport(filter *model.UserReportOptions) ([]*model.UserReportQuery, error)
        + GetUserCountForReport(filter *model.UserReportOptions) (int64, error)

    }
    interface UserTermsOfServiceStore  {
        + GetByUser(userID string) (*model.UserTermsOfService, error)
        + Save(userTermsOfService *model.UserTermsOfService) (*model.UserTermsOfService, error)
        + Delete(userID string, termsOfServiceId string) error

    }
    interface WebhookStore  {
        + SaveIncoming(webhook *model.IncomingWebhook) (*model.IncomingWebhook, error)
        + GetIncoming(id string, allowFromCache bool) (*model.IncomingWebhook, error)
        + GetIncomingList(offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingListByUser(userID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingByTeam(teamID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingByTeamByUser(teamID string, userID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + UpdateIncoming(webhook *model.IncomingWebhook) (*model.IncomingWebhook, error)
        + GetIncomingByChannel(channelID string) ([]*model.IncomingWebhook, error)
        + DeleteIncoming(webhookID string, timestamp int64) error
        + PermanentDeleteIncomingByChannel(channelID string) error
        + PermanentDeleteIncomingByUser(userID string) error
        + SaveOutgoing(webhook *model.OutgoingWebhook) (*model.OutgoingWebhook, error)
        + GetOutgoing(id string) (*model.OutgoingWebhook, error)
        + GetOutgoingByChannel(channelID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByChannelByUser(channelID string, userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingList(offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingListByUser(userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByTeam(teamID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByTeamByUser(teamID string, userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + DeleteOutgoing(webhookID string, timestamp int64) error
        + PermanentDeleteOutgoingByChannel(channelID string) error
        + PermanentDeleteOutgoingByUser(userID string) error
        + UpdateOutgoing(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, error)
        + AnalyticsIncomingCount(teamID string) (int64, error)
        + AnalyticsOutgoingCount(teamID string) (int64, error)
        + InvalidateWebhookCache(webhook string) 
        + ClearCaches() 

    }
}


namespace storetest {
    class ByChannelDisplayName << (S,Aquamarine) >> {
        + Len() int
        + Swap(i int, j int) 
        + Less(i int, j int) bool

    }
    class ByUserId << (S,Aquamarine) >> {
        + Len() int
        + Swap(i int, j int) 
        + Less(i int, j int) bool

    }
    interface SqlStore  {
        + GetMasterX() SqlXExecutor
        + DriverName() string

    }
    interface SqlXExecutor  {
        + Get(dest any, query string, args ...any) error
        + NamedExec(query string, arg any) (sql.Result, error)
        + Exec(query string, args ...any) (sql.Result, error)
        + ExecRaw(query string, args ...any) (sql.Result, error)
        + NamedQuery(query string, arg any) (*sqlx.Rows, error)
        + QueryRowX(query string, args ...any) *sqlx.Row
        + QueryX(query string, args ...any) (*sqlx.Rows, error)
        + Select(dest any, query string, args ...any) error

    }
    class Store << (S,Aquamarine) >> {
        + TeamStore mocks.TeamStore
        + ChannelStore mocks.ChannelStore
        + PostStore mocks.PostStore
        + UserStore mocks.UserStore
        + RetentionPolicyStore mocks.RetentionPolicyStore
        + BotStore mocks.BotStore
        + AuditStore mocks.AuditStore
        + ClusterDiscoveryStore mocks.ClusterDiscoveryStore
        + RemoteClusterStore mocks.RemoteClusterStore
        + ComplianceStore mocks.ComplianceStore
        + SessionStore mocks.SessionStore
        + OAuthStore mocks.OAuthStore
        + OutgoingOAuthConnectionStore mocks.OutgoingOAuthConnectionStore
        + SystemStore mocks.SystemStore
        + WebhookStore mocks.WebhookStore
        + CommandStore mocks.CommandStore
        + CommandWebhookStore mocks.CommandWebhookStore
        + PreferenceStore mocks.PreferenceStore
        + LicenseStore mocks.LicenseStore
        + TokenStore mocks.TokenStore
        + EmojiStore mocks.EmojiStore
        + ThreadStore mocks.ThreadStore
        + StatusStore mocks.StatusStore
        + FileInfoStore mocks.FileInfoStore
        + UploadSessionStore mocks.UploadSessionStore
        + ReactionStore mocks.ReactionStore
        + JobStore mocks.JobStore
        + UserAccessTokenStore mocks.UserAccessTokenStore
        + PluginStore mocks.PluginStore
        + ChannelMemberHistoryStore mocks.ChannelMemberHistoryStore
        + RoleStore mocks.RoleStore
        + SchemeStore mocks.SchemeStore
        + TermsOfServiceStore mocks.TermsOfServiceStore
        + GroupStore mocks.GroupStore
        + UserTermsOfServiceStore mocks.UserTermsOfServiceStore
        + LinkMetadataStore mocks.LinkMetadataStore
        + SharedChannelStore mocks.SharedChannelStore
        + ProductNoticesStore mocks.ProductNoticesStore
        + DraftStore mocks.DraftStore
        + NotifyAdminStore mocks.NotifyAdminStore
        + PostPriorityStore mocks.PostPriorityStore
        + PostAcknowledgementStore mocks.PostAcknowledgementStore
        + PostPersistentNotificationStore mocks.PostPersistentNotificationStore
        + TrueUpReviewStore mocks.TrueUpReviewStore
        + DesktopTokensStore mocks.DesktopTokensStore

        + SetContext(context context.Context) 
        + Context() context.Context
        + Logger() mlog.LoggerIFace
        + Team() store.TeamStore
        + Channel() store.ChannelStore
        + Post() store.PostStore
        + User() store.UserStore
        + RetentionPolicy() store.RetentionPolicyStore
        + Bot() store.BotStore
        + ProductNotices() store.ProductNoticesStore
        + Audit() store.AuditStore
        + ClusterDiscovery() store.ClusterDiscoveryStore
        + RemoteCluster() store.RemoteClusterStore
        + Compliance() store.ComplianceStore
        + Session() store.SessionStore
        + OAuth() store.OAuthStore
        + OutgoingOAuthConnection() store.OutgoingOAuthConnectionStore
        + System() store.SystemStore
        + Webhook() store.WebhookStore
        + Command() store.CommandStore
        + CommandWebhook() store.CommandWebhookStore
        + Preference() store.PreferenceStore
        + License() store.LicenseStore
        + Token() store.TokenStore
        + Emoji() store.EmojiStore
        + Thread() store.ThreadStore
        + Status() store.StatusStore
        + FileInfo() store.FileInfoStore
        + UploadSession() store.UploadSessionStore
        + Reaction() store.ReactionStore
        + Job() store.JobStore
        + UserAccessToken() store.UserAccessTokenStore
        + Plugin() store.PluginStore
        + Role() store.RoleStore
        + Scheme() store.SchemeStore
        + TermsOfService() store.TermsOfServiceStore
        + UserTermsOfService() store.UserTermsOfServiceStore
        + Draft() store.DraftStore
        + ChannelMemberHistory() store.ChannelMemberHistoryStore
        + TrueUpReview() store.TrueUpReviewStore
        + DesktopTokens() store.DesktopTokensStore
        + NotifyAdmin() store.NotifyAdminStore
        + Group() store.GroupStore
        + LinkMetadata() store.LinkMetadataStore
        + SharedChannel() store.SharedChannelStore
        + PostPriority() store.PostPriorityStore
        + PostAcknowledgement() store.PostAcknowledgementStore
        + PostPersistentNotification() store.PostPersistentNotificationStore
        + MarkSystemRanUnitTests() 
        + Close() 
        + LockToMaster() 
        + UnlockFromMaster() 
        + DropAllTables() 
        + GetDbVersion( bool) (string, error)
        + GetInternalMasterDB() *sql.DB
        + GetInternalReplicaDB() *sql.DB
        + GetInternalReplicaDBs() []*sql.DB
        + RecycleDBConnections( time.Duration) 
        + GetDBSchemaVersion() (int, error)
        + GetLocalSchemaVersion() (int, error)
        + GetAppliedMigrations() ([]model.AppliedMigration, error)
        + TotalMasterDbConnections() int
        + TotalReadDbConnections() int
        + TotalSearchDbConnections() int
        + CheckIntegrity() <font color=blue>chan</font> model.IntegrityCheckResult
        + ReplicaLagAbs() error
        + ReplicaLagTime() error
        + AssertExpectations(t mock.TestingT) bool

    }
    class byFileInfoId << (S,Aquamarine) >> {
        + Len() int
        + Swap(i int, j int) 
        + Less(i int, j int) bool

    }
    class byPostId << (S,Aquamarine) >> {
        + Len() int
        + Swap(i int, j int) 
        + Less(i int, j int) bool

    }
    class removalsData << (S,Aquamarine) >> {
        + UserA *model.User
        + UserB *model.User
        + UserC *model.User
        + ConstrainedChannel *model.Channel
        + UnconstrainedChannel *model.Channel
        + ConstrainedTeam *model.Team
        + UnconstrainedTeam *model.Team
        + Group *model.Group

    }
    class storetest.ByChannelDisplayName << (T, #FF7700) >>  {
    }
    class storetest.ByUserId << (T, #FF7700) >>  {
    }
    class storetest.byFileInfoId << (T, #FF7700) >>  {
    }
    class storetest.byPostId << (T, #FF7700) >>  {
    }
    class "model.ChannelList" as modelChannelList {
        'This class was created so that we can correctly have an alias pointing to this name. Since it contains dots that can break namespaces
    }
    class "[]*model.FileInfo" as modelFileInfo {
        'This class was created so that we can correctly have an alias pointing to this name. Since it contains dots that can break namespaces
    }
    class "[]*model.Post" as modelPost {
        'This class was created so that we can correctly have an alias pointing to this name. Since it contains dots that can break namespaces
    }
    class "[]*model.Status" as modelStatus {
        'This class was created so that we can correctly have an alias pointing to this name. Since it contains dots that can break namespaces
    }
}

"store.Store" <|-- "storetest.Store"

namespace teams {
    class DomainError << (S,Aquamarine) >> {
        + Domain string

        + Error() string

    }
    class ServiceConfig << (S,Aquamarine) >> {
        + TeamStore store.TeamStore
        + GroupStore store.GroupStore
        + ChannelStore store.ChannelStore
        + Users Users
        + WebHub WebHub
        + ConfigFn <font color=blue>func</font>() *model.Config
        + LicenseFn <font color=blue>func</font>() *model.License

    }
    class TeamService << (S,Aquamarine) >> {
        + CreateTeam(rctx request.CTX, team *model.Team) (*model.Team, error)
        + GetTeam(teamID string) (*model.Team, error)
        + GetTeams(teamIDs []string) ([]*model.Team, error)
        + UpdateTeam(team *model.Team, opts UpdateOptions) (*model.Team, error)
        + PatchTeam(teamID string, patch *model.TeamPatch) (*model.Team, error)
        + JoinUserToTeam(rctx request.CTX, team *model.Team, user *model.User) (*model.TeamMember, bool, error)
        + RemoveTeamMember(rctx request.CTX, teamMember *model.TeamMember) error
        + GetMember(c request.CTX, teamID string, userID string) (*model.TeamMember, error)
        + DefaultChannelNames() []string
        + IsTeamEmailAllowed(user *model.User, team *model.Team) bool
        + GetAllowedDomains(user *model.User, team *model.Team) []string

    }
    class UpdateOptions << (S,Aquamarine) >> {
        + Sanitized bool
        + Imported bool

    }
    interface Users  {
        + GetUser(userID string) (*model.User, error)

    }
    interface WebHub  {
        + Publish(message *model.WebSocketEvent) 

    }
}


namespace testlib {
    class FakeClusterInterface << (S,Aquamarine) >> {
        + StartInterNodeCommunication() 
        + StopInterNodeCommunication() 
        + RegisterClusterMessageHandler(event model.ClusterEvent, crm einterfaces.ClusterMessageHandler) 
        + HealthScore() int
        + GetClusterId() string
        + IsLeader() bool
        + GetMyClusterInfo() *model.ClusterInfo
        + GetClusterInfos() []*model.ClusterInfo
        + SendClusterMessage(message *model.ClusterMessage) 
        + SendClusterMessageToNode(nodeID string, message *model.ClusterMessage) error
        + NotifyMsg(buf []byte) 
        + GetClusterStats() ([]*model.ClusterStats, *model.AppError)
        + GetLogs(page int, perPage int) ([]string, *model.AppError)
        + QueryLogs(page int, perPage int) (<font color=blue>map</font>[string][]string, *model.AppError)
        + ConfigChanged(previousConfig *model.Config, newConfig *model.Config, sendToOtherServer bool) *model.AppError
        + SendClearRoleCacheMessage() 
        + GetPluginStatuses() (model.PluginStatuses, *model.AppError)
        + GetMessages() []*model.ClusterMessage
        + SelectMessages(filterCond <font color=blue>func</font>(*model.ClusterMessage) bool) []*model.ClusterMessage
        + ClearMessages() 

    }
    class HelperOptions << (S,Aquamarine) >> {
        + EnableStore bool
        + EnableResources bool
        + WithReadReplica bool

    }
    class MainHelper << (S,Aquamarine) >> {
        + Settings *model.SqlSettings
        + Store store.Store
        + SearchEngine *searchengine.Broker
        + SQLStore *sqlstore.SqlStore
        + ClusterInterface *FakeClusterInterface
        + Logger *mlog.Logger

        + Main(m *testing.M) 
        + ToggleReplicasOff() 
        + ToggleReplicasOn() 
        + PreloadMigrations() 
        + Close() error
        + GetSQLSettings() *model.SqlSettings
        + GetStore() store.Store
        + GetSQLStore() *sqlstore.SqlStore
        + GetClusterInterface() *FakeClusterInterface
        + GetSearchEngine() *searchengine.Broker
        + SetReplicationLagForTesting(seconds int) error

    }
    class TestStore << (S,Aquamarine) >> {
        + Close() 

    }
    class testResourceDetails << (S,Aquamarine) >> {
    }
}
"store.Store" *-- "testlib.TestStore"


namespace testutils {
    class StaticConfigService << (S,Aquamarine) >> {
        + Cfg *model.Config

        + Config() *model.Config
        + AddConfigListener( <font color=blue>func</font>(*model.Config, *model.Config) ) string
        + RemoveConfigListener( string) 
        + AsymmetricSigningKey() *ecdsa.PrivateKey
        + PostActionCookieSecret() []byte

    }
}


namespace timerlayer {
    class TimerLayer << (S,Aquamarine) >> {
        + Metrics einterfaces.MetricsInterface
        + AuditStore store.AuditStore
        + BotStore store.BotStore
        + ChannelStore store.ChannelStore
        + ChannelMemberHistoryStore store.ChannelMemberHistoryStore
        + ClusterDiscoveryStore store.ClusterDiscoveryStore
        + CommandStore store.CommandStore
        + CommandWebhookStore store.CommandWebhookStore
        + ComplianceStore store.ComplianceStore
        + DesktopTokensStore store.DesktopTokensStore
        + DraftStore store.DraftStore
        + EmojiStore store.EmojiStore
        + FileInfoStore store.FileInfoStore
        + GroupStore store.GroupStore
        + JobStore store.JobStore
        + LicenseStore store.LicenseStore
        + LinkMetadataStore store.LinkMetadataStore
        + NotifyAdminStore store.NotifyAdminStore
        + OAuthStore store.OAuthStore
        + OutgoingOAuthConnectionStore store.OutgoingOAuthConnectionStore
        + PluginStore store.PluginStore
        + PostStore store.PostStore
        + PostAcknowledgementStore store.PostAcknowledgementStore
        + PostPersistentNotificationStore store.PostPersistentNotificationStore
        + PostPriorityStore store.PostPriorityStore
        + PreferenceStore store.PreferenceStore
        + ProductNoticesStore store.ProductNoticesStore
        + ReactionStore store.ReactionStore
        + RemoteClusterStore store.RemoteClusterStore
        + RetentionPolicyStore store.RetentionPolicyStore
        + RoleStore store.RoleStore
        + SchemeStore store.SchemeStore
        + SessionStore store.SessionStore
        + SharedChannelStore store.SharedChannelStore
        + StatusStore store.StatusStore
        + SystemStore store.SystemStore
        + TeamStore store.TeamStore
        + TermsOfServiceStore store.TermsOfServiceStore
        + ThreadStore store.ThreadStore
        + TokenStore store.TokenStore
        + TrueUpReviewStore store.TrueUpReviewStore
        + UploadSessionStore store.UploadSessionStore
        + UserStore store.UserStore
        + UserAccessTokenStore store.UserAccessTokenStore
        + UserTermsOfServiceStore store.UserTermsOfServiceStore
        + WebhookStore store.WebhookStore

        + Audit() store.AuditStore
        + Bot() store.BotStore
        + Channel() store.ChannelStore
        + ChannelMemberHistory() store.ChannelMemberHistoryStore
        + ClusterDiscovery() store.ClusterDiscoveryStore
        + Command() store.CommandStore
        + CommandWebhook() store.CommandWebhookStore
        + Compliance() store.ComplianceStore
        + DesktopTokens() store.DesktopTokensStore
        + Draft() store.DraftStore
        + Emoji() store.EmojiStore
        + FileInfo() store.FileInfoStore
        + Group() store.GroupStore
        + Job() store.JobStore
        + License() store.LicenseStore
        + LinkMetadata() store.LinkMetadataStore
        + NotifyAdmin() store.NotifyAdminStore
        + OAuth() store.OAuthStore
        + OutgoingOAuthConnection() store.OutgoingOAuthConnectionStore
        + Plugin() store.PluginStore
        + Post() store.PostStore
        + PostAcknowledgement() store.PostAcknowledgementStore
        + PostPersistentNotification() store.PostPersistentNotificationStore
        + PostPriority() store.PostPriorityStore
        + Preference() store.PreferenceStore
        + ProductNotices() store.ProductNoticesStore
        + Reaction() store.ReactionStore
        + RemoteCluster() store.RemoteClusterStore
        + RetentionPolicy() store.RetentionPolicyStore
        + Role() store.RoleStore
        + Scheme() store.SchemeStore
        + Session() store.SessionStore
        + SharedChannel() store.SharedChannelStore
        + Status() store.StatusStore
        + System() store.SystemStore
        + Team() store.TeamStore
        + TermsOfService() store.TermsOfServiceStore
        + Thread() store.ThreadStore
        + Token() store.TokenStore
        + TrueUpReview() store.TrueUpReviewStore
        + UploadSession() store.UploadSessionStore
        + User() store.UserStore
        + UserAccessToken() store.UserAccessTokenStore
        + UserTermsOfService() store.UserTermsOfServiceStore
        + Webhook() store.WebhookStore
        + Close() 
        + DropAllTables() 
        + LockToMaster() 
        + MarkSystemRanUnitTests() 
        + SetContext(context context.Context) 
        + TotalMasterDbConnections() int
        + TotalReadDbConnections() int
        + TotalSearchDbConnections() int
        + UnlockFromMaster() 

    }
    class TimerLayerAuditStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Get(user_id string, offset int, limit int) (model.Audits, error)
        + PermanentDeleteByUser(userID string) error
        + Save(audit *model.Audit) error

    }
    class TimerLayerBotStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Get(userID string, includeDeleted bool) (*model.Bot, error)
        + GetAll(options *model.BotGetOptions) ([]*model.Bot, error)
        + PermanentDelete(userID string) error
        + Save(bot *model.Bot) (*model.Bot, error)
        + Update(bot *model.Bot) (*model.Bot, error)

    }
    class TimerLayerChannelMemberHistoryStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + DeleteOrphanedRows(limit int) (int64, error)
        + GetChannelsLeftSince(userID string, since int64) ([]string, error)
        + GetUsersInChannelDuring(startTime int64, endTime int64, channelID string) ([]*model.ChannelMemberHistoryResult, error)
        + LogJoinEvent(userID string, channelID string, joinTime int64) error
        + LogLeaveEvent(userID string, channelID string, leaveTime int64) error
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)

    }
    class TimerLayerChannelStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + AnalyticsDeletedTypeCount(teamID string, channelType model.ChannelType) (int64, error)
        + AnalyticsTypeCount(teamID string, channelType model.ChannelType) (int64, error)
        + Autocomplete(rctx request.CTX, userID string, term string, includeDeleted bool, isGuest bool) (model.ChannelListWithTeamData, error)
        + AutocompleteInTeam(rctx request.CTX, teamID string, userID string, term string, includeDeleted bool, isGuest bool) (model.ChannelList, error)
        + AutocompleteInTeamForSearch(teamID string, userID string, term string, includeDeleted bool) (model.ChannelList, error)
        + ClearAllCustomRoleAssignments() error
        + ClearCaches() 
        + ClearMembersForUserCache() 
        + ClearSidebarOnTeamLeave(userID string, teamID string) error
        + CountPostsAfter(channelID string, timestamp int64, excludedUserID string) (int, int, error)
        + CountUrgentPostsAfter(channelID string, timestamp int64, excludedUserID string) (int, error)
        + CreateDirectChannel(ctx request.CTX, userID *model.User, otherUserID *model.User, channelOptions ...model.ChannelOption) (*model.Channel, error)
        + CreateInitialSidebarCategories(c request.CTX, userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, error)
        + CreateSidebarCategory(userID string, teamID string, newCategory *model.SidebarCategoryWithChannels) (*model.SidebarCategoryWithChannels, error)
        + Delete(channelID string, timestamp int64) error
        + DeleteAllSidebarChannelForChannel(channelID string) error
        + DeleteSidebarCategory(categoryID string) error
        + DeleteSidebarChannelsByPreferences(preferences model.Preferences) error
        + Get(id string, allowFromCache bool) (*model.Channel, error)
        + GetAll(teamID string) ([]*model.Channel, error)
        + GetAllChannelMemberIdsByChannelId(id string) ([]string, error)
        + GetAllChannelMembersForUser(userID string, allowFromCache bool, includeDeleted bool) (<font color=blue>map</font>[string]string, error)
        + GetAllChannelMembersNotifyPropsForChannel(channelID string, allowFromCache bool) (<font color=blue>map</font>[string]model.StringMap, error)
        + GetAllChannels(page int, perPage int, opts store.ChannelSearchOpts) (model.ChannelListWithTeamData, error)
        + GetAllChannelsCount(opts store.ChannelSearchOpts) (int64, error)
        + GetAllChannelsForExportAfter(limit int, afterID string) ([]*model.ChannelForExport, error)
        + GetAllDirectChannelsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.DirectChannelForExport, error)
        + GetByName(team_id string, name string, allowFromCache bool) (*model.Channel, error)
        + GetByNameIncludeDeleted(team_id string, name string, allowFromCache bool) (*model.Channel, error)
        + GetByNames(team_id string, names []string, allowFromCache bool) ([]*model.Channel, error)
        + GetByNamesIncludeDeleted(team_id string, names []string, allowFromCache bool) ([]*model.Channel, error)
        + GetChannelCounts(teamID string, userID string) (*model.ChannelCounts, error)
        + GetChannelMembersForExport(userID string, teamID string, includeArchivedChannel bool) ([]*model.ChannelMemberForExport, error)
        + GetChannelMembersTimezones(channelID string) ([]model.StringMap, error)
        + GetChannelUnread(channelID string, userID string) (*model.ChannelUnread, error)
        + GetChannels(teamID string, userID string, opts *model.ChannelSearchOpts) (model.ChannelList, error)
        + GetChannelsBatchForIndexing(startTime int64, startChannelID string, limit int) ([]*model.Channel, error)
        + GetChannelsByIds(channelIds []string, includeDeleted bool) ([]*model.Channel, error)
        + GetChannelsByScheme(schemeID string, offset int, limit int) (model.ChannelList, error)
        + GetChannelsByUser(userID string, includeDeleted bool, lastDeleteAt int, pageSize int, fromChannelID string) (model.ChannelList, error)
        + GetChannelsMemberCount(channelIDs []string) (<font color=blue>map</font>[string]int64, error)
        + GetChannelsWithTeamDataByIds(channelIds []string, includeDeleted bool) ([]*model.ChannelWithTeamData, error)
        + GetChannelsWithUnreadsAndWithMentions(ctx context.Context, channelIDs []string, userID string, userNotifyProps model.StringMap) ([]string, []string, <font color=blue>map</font>[string]int64, error)
        + GetDeleted(team_id string, offset int, limit int, userID string) (model.ChannelList, error)
        + GetDeletedByName(team_id string, name string) (*model.Channel, error)
        + GetFileCount(channelID string) (int64, error)
        + GetForPost(postID string) (*model.Channel, error)
        + GetGuestCount(channelID string, allowFromCache bool) (int64, error)
        + GetMany(ids []string, allowFromCache bool) (model.ChannelList, error)
        + GetMember(ctx context.Context, channelID string, userID string) (*model.ChannelMember, error)
        + GetMemberCount(channelID string, allowFromCache bool) (int64, error)
        + GetMemberCountFromCache(channelID string) int64
        + GetMemberCountsByGroup(ctx context.Context, channelID string, includeTimezones bool) ([]*model.ChannelMemberCountByGroup, error)
        + GetMemberForPost(postID string, userID string, includeArchivedChannels bool) (*model.ChannelMember, error)
        + GetMemberLastViewedAt(ctx context.Context, channelID string, userID string) (int64, error)
        + GetMembers(channelID string, offset int, limit int) (model.ChannelMembers, error)
        + GetMembersByChannelIds(channelIds []string, userID string) (model.ChannelMembers, error)
        + GetMembersByIds(channelID string, userIds []string) (model.ChannelMembers, error)
        + GetMembersForUser(teamID string, userID string) (model.ChannelMembers, error)
        + GetMembersForUserWithPagination(userID string, page int, perPage int) (model.ChannelMembersWithTeamData, error)
        + GetMembersInfoByChannelIds(channelIDs []string) (<font color=blue>map</font>[string][]*model.User, error)
        + GetMoreChannels(teamID string, userID string, offset int, limit int) (model.ChannelList, error)
        + GetPinnedPostCount(channelID string, allowFromCache bool) (int64, error)
        + GetPinnedPosts(channelID string) (*model.PostList, error)
        + GetPrivateChannelsForTeam(teamID string, offset int, limit int) (model.ChannelList, error)
        + GetPublicChannelsByIdsForTeam(teamID string, channelIds []string) (model.ChannelList, error)
        + GetPublicChannelsForTeam(teamID string, offset int, limit int) (model.ChannelList, error)
        + GetSidebarCategories(userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, error)
        + GetSidebarCategoriesForTeamForUser(userID string, teamID string) (*model.OrderedSidebarCategories, error)
        + GetSidebarCategory(categoryID string) (*model.SidebarCategoryWithChannels, error)
        + GetSidebarCategoryOrder(userID string, teamID string) ([]string, error)
        + GetTeamChannels(teamID string) (model.ChannelList, error)
        + GetTeamForChannel(channelID string) (*model.Team, error)
        + GetTeamMembersForChannel(channelID string) ([]string, error)
        + GroupSyncedChannelCount() (int64, error)
        + IncrementMentionCount(channelID string, userIDs []string, isRoot bool, isUrgent bool) error
        + InvalidateAllChannelMembersForUser(userID string) 
        + InvalidateCacheForChannelMembersNotifyProps(channelID string) 
        + InvalidateChannel(id string) 
        + InvalidateChannelByName(teamID string, name string) 
        + InvalidateGuestCount(channelID string) 
        + InvalidateMemberCount(channelID string) 
        + InvalidatePinnedPostCount(channelID string) 
        + MigrateChannelMembers(fromChannelID string, fromUserID string) (<font color=blue>map</font>[string]string, error)
        + PatchMultipleMembersNotifyProps(members []*model.ChannelMemberIdentifier, notifyProps <font color=blue>map</font>[string]string) ([]*model.ChannelMember, error)
        + PermanentDelete(ctx request.CTX, channelID string) error
        + PermanentDeleteByTeam(teamID string) error
        + PermanentDeleteMembersByChannel(ctx request.CTX, channelID string) error
        + PermanentDeleteMembersByUser(ctx request.CTX, userID string) error
        + RemoveAllDeactivatedMembers(ctx request.CTX, channelID string) error
        + RemoveMember(ctx request.CTX, channelID string, userID string) error
        + RemoveMembers(ctx request.CTX, channelID string, userIds []string) error
        + ResetAllChannelSchemes() error
        + Restore(channelID string, timestamp int64) error
        + Save(rctx request.CTX, channel *model.Channel, maxChannelsPerTeam int64) (*model.Channel, error)
        + SaveDirectChannel(ctx request.CTX, channel *model.Channel, member1 *model.ChannelMember, member2 *model.ChannelMember) (*model.Channel, error)
        + SaveMember(rctx request.CTX, member *model.ChannelMember) (*model.ChannelMember, error)
        + SaveMultipleMembers(members []*model.ChannelMember) ([]*model.ChannelMember, error)
        + SearchAllChannels(term string, opts store.ChannelSearchOpts) (model.ChannelListWithTeamData, int64, error)
        + SearchArchivedInTeam(teamID string, term string, userID string) (model.ChannelList, error)
        + SearchForUserInTeam(userID string, teamID string, term string, includeDeleted bool) (model.ChannelList, error)
        + SearchGroupChannels(userID string, term string) (model.ChannelList, error)
        + SearchInTeam(teamID string, term string, includeDeleted bool) (model.ChannelList, error)
        + SearchMore(userID string, teamID string, term string) (model.ChannelList, error)
        + SetDeleteAt(channelID string, deleteAt int64, updateAt int64) error
        + SetShared(channelId string, shared bool) error
        + Update(ctx request.CTX, channel *model.Channel) (*model.Channel, error)
        + UpdateLastViewedAt(channelIds []string, userID string) (<font color=blue>map</font>[string]int64, error)
        + UpdateLastViewedAtPost(unreadPost *model.Post, userID string, mentionCount int, mentionCountRoot int, urgentMentionCount int, setUnreadCountRoot bool) (*model.ChannelUnreadAt, error)
        + UpdateMember(ctx request.CTX, member *model.ChannelMember) (*model.ChannelMember, error)
        + UpdateMemberNotifyProps(channelID string, userID string, props <font color=blue>map</font>[string]string) (*model.ChannelMember, error)
        + UpdateMembersRole(channelID string, userIDs []string) error
        + UpdateMultipleMembers(members []*model.ChannelMember) ([]*model.ChannelMember, error)
        + UpdateSidebarCategories(userID string, teamID string, categories []*model.SidebarCategoryWithChannels) ([]*model.SidebarCategoryWithChannels, []*model.SidebarCategoryWithChannels, error)
        + UpdateSidebarCategoryOrder(userID string, teamID string, categoryOrder []string) error
        + UpdateSidebarChannelCategoryOnMove(channel *model.Channel, newTeamID string) error
        + UpdateSidebarChannelsByPreferences(preferences model.Preferences) error
        + UserBelongsToChannels(userID string, channelIds []string) (bool, error)

    }
    class TimerLayerClusterDiscoveryStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Cleanup() error
        + Delete(discovery *model.ClusterDiscovery) (bool, error)
        + Exists(discovery *model.ClusterDiscovery) (bool, error)
        + GetAll(discoveryType string, clusterName string) ([]*model.ClusterDiscovery, error)
        + Save(discovery *model.ClusterDiscovery) error
        + SetLastPingAt(discovery *model.ClusterDiscovery) error

    }
    class TimerLayerCommandStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + AnalyticsCommandCount(teamID string) (int64, error)
        + Delete(commandID string, timestamp int64) error
        + Get(id string) (*model.Command, error)
        + GetByTeam(teamID string) ([]*model.Command, error)
        + GetByTrigger(teamID string, trigger string) (*model.Command, error)
        + PermanentDeleteByTeam(teamID string) error
        + PermanentDeleteByUser(userID string) error
        + Save(webhook *model.Command) (*model.Command, error)
        + Update(hook *model.Command) (*model.Command, error)

    }
    class TimerLayerCommandWebhookStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Cleanup() 
        + Get(id string) (*model.CommandWebhook, error)
        + Save(webhook *model.CommandWebhook) (*model.CommandWebhook, error)
        + TryUse(id string, limit int) error

    }
    class TimerLayerComplianceStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + ComplianceExport(compliance *model.Compliance, cursor model.ComplianceExportCursor, limit int) ([]*model.CompliancePost, model.ComplianceExportCursor, error)
        + Get(id string) (*model.Compliance, error)
        + GetAll(offset int, limit int) (model.Compliances, error)
        + MessageExport(c request.CTX, cursor model.MessageExportCursor, limit int) ([]*model.MessageExport, model.MessageExportCursor, error)
        + Save(compliance *model.Compliance) (*model.Compliance, error)
        + Update(compliance *model.Compliance) (*model.Compliance, error)

    }
    class TimerLayerDesktopTokensStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Delete(token string) error
        + DeleteByUserId(userId string) error
        + DeleteOlderThan(minCreatedAt int64) error
        + GetUserId(token string, minCreatedAt int64) (*string, error)
        + Insert(token string, createAt int64, userId string) error

    }
    class TimerLayerDraftStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Delete(userID string, channelID string, rootID string) error
        + DeleteDraftsAssociatedWithPost(channelID string, rootID string) error
        + DeleteEmptyDraftsByCreateAtAndUserId(createAt int64, userId string) error
        + DeleteOrphanDraftsByCreateAtAndUserId(createAt int64, userId string) error
        + Get(userID string, channelID string, rootID string, includeDeleted bool) (*model.Draft, error)
        + GetDraftsForUser(userID string, teamID string) ([]*model.Draft, error)
        + GetLastCreateAtAndUserIdValuesForEmptyDraftsMigration(createAt int64, userId string) (int64, string, error)
        + Upsert(d *model.Draft) (*model.Draft, error)

    }
    class TimerLayerEmojiStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Delete(emoji *model.Emoji, timestamp int64) error
        + Get(c request.CTX, id string, allowFromCache bool) (*model.Emoji, error)
        + GetByName(c request.CTX, name string, allowFromCache bool) (*model.Emoji, error)
        + GetList(offset int, limit int, sort string) ([]*model.Emoji, error)
        + GetMultipleByName(c request.CTX, names []string) ([]*model.Emoji, error)
        + Save(emoji *model.Emoji) (*model.Emoji, error)
        + Search(name string, prefixOnly bool, limit int) ([]*model.Emoji, error)

    }
    class TimerLayerFileInfoStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + AttachToPost(c request.CTX, fileID string, postID string, channelID string, creatorID string) error
        + ClearCaches() 
        + CountAll() (int64, error)
        + DeleteForPost(c request.CTX, postID string) (string, error)
        + Get(id string) (*model.FileInfo, error)
        + GetByIds(ids []string) ([]*model.FileInfo, error)
        + GetByPath(path string) (*model.FileInfo, error)
        + GetFilesBatchForIndexing(startTime int64, startFileID string, includeDeleted bool, limit int) ([]*model.FileForIndexing, error)
        + GetForPost(postID string, readFromMaster bool, includeDeleted bool, allowFromCache bool) ([]*model.FileInfo, error)
        + GetForUser(userID string) ([]*model.FileInfo, error)
        + GetFromMaster(id string) (*model.FileInfo, error)
        + GetStorageUsage(allowFromCache bool, includeDeleted bool) (int64, error)
        + GetUptoNSizeFileTime(n int64) (int64, error)
        + GetWithOptions(page int, perPage int, opt *model.GetFileInfosOptions) ([]*model.FileInfo, error)
        + InvalidateFileInfosForPostCache(postID string, deleted bool) 
        + PermanentDelete(c request.CTX, fileID string) error
        + PermanentDeleteBatch(ctx request.CTX, endTime int64, limit int64) (int64, error)
        + PermanentDeleteByUser(ctx request.CTX, userID string) (int64, error)
        + Save(ctx request.CTX, info *model.FileInfo) (*model.FileInfo, error)
        + Search(ctx request.CTX, paramsList []*model.SearchParams, userID string, teamID string, page int, perPage int) (*model.FileInfoList, error)
        + SetContent(ctx request.CTX, fileID string, content string) error
        + Upsert(rctx request.CTX, info *model.FileInfo) (*model.FileInfo, error)

    }
    class TimerLayerGroupStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + AdminRoleGroupsForSyncableMember(userID string, syncableID string, syncableType model.GroupSyncableType) ([]string, error)
        + ChannelMembersMinusGroupMembers(channelID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, error)
        + ChannelMembersToAdd(since int64, channelID *string, includeRemovedMembers bool) ([]*model.UserChannelIDPair, error)
        + ChannelMembersToRemove(channelID *string) ([]*model.ChannelMember, error)
        + CountChannelMembersMinusGroupMembers(channelID string, groupIDs []string) (int64, error)
        + CountGroupsByChannel(channelID string, opts model.GroupSearchOpts) (int64, error)
        + CountGroupsByTeam(teamID string, opts model.GroupSearchOpts) (int64, error)
        + CountTeamMembersMinusGroupMembers(teamID string, groupIDs []string) (int64, error)
        + Create(group *model.Group) (*model.Group, error)
        + CreateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, error)
        + CreateWithUserIds(group *model.GroupWithUserIds) (*model.Group, error)
        + Delete(groupID string) (*model.Group, error)
        + DeleteGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, error)
        + DeleteMember(groupID string, userID string) (*model.GroupMember, error)
        + DeleteMembers(groupID string, userIDs []string) ([]*model.GroupMember, error)
        + DistinctGroupMemberCount() (int64, error)
        + DistinctGroupMemberCountForSource(source model.GroupSource) (int64, error)
        + Get(groupID string) (*model.Group, error)
        + GetAllBySource(groupSource model.GroupSource) ([]*model.Group, error)
        + GetAllGroupSyncablesByGroupId(groupID string, syncableType model.GroupSyncableType) ([]*model.GroupSyncable, error)
        + GetByIDs(groupIDs []string) ([]*model.Group, error)
        + GetByName(name string, opts model.GroupSearchOpts) (*model.Group, error)
        + GetByRemoteID(remoteID string, groupSource model.GroupSource) (*model.Group, error)
        + GetByUser(userID string) ([]*model.Group, error)
        + GetGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, error)
        + GetGroups(page int, perPage int, opts model.GroupSearchOpts, viewRestrictions *model.ViewUsersRestrictions) ([]*model.Group, error)
        + GetGroupsAssociatedToChannelsByTeam(teamID string, opts model.GroupSearchOpts) (<font color=blue>map</font>[string][]*model.GroupWithSchemeAdmin, error)
        + GetGroupsByChannel(channelID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, error)
        + GetGroupsByTeam(teamID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, error)
        + GetMember(groupID string, userID string) (*model.GroupMember, error)
        + GetMemberCount(groupID string) (int64, error)
        + GetMemberCountWithRestrictions(groupID string, viewRestrictions *model.ViewUsersRestrictions) (int64, error)
        + GetMemberUsers(groupID string) ([]*model.User, error)
        + GetMemberUsersInTeam(groupID string, teamID string) ([]*model.User, error)
        + GetMemberUsersNotInChannel(groupID string, channelID string) ([]*model.User, error)
        + GetMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetMemberUsersSortedPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions, teammateNameDisplay string) ([]*model.User, error)
        + GetNonMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GroupChannelCount() (int64, error)
        + GroupCount() (int64, error)
        + GroupCountBySource(source model.GroupSource) (int64, error)
        + GroupCountWithAllowReference() (int64, error)
        + GroupMemberCount() (int64, error)
        + GroupTeamCount() (int64, error)
        + PermanentDeleteMembersByUser(userID string) error
        + PermittedSyncableAdmins(syncableID string, syncableType model.GroupSyncableType) ([]string, error)
        + Restore(groupID string) (*model.Group, error)
        + TeamMembersMinusGroupMembers(teamID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, error)
        + TeamMembersToAdd(since int64, teamID *string, includeRemovedMembers bool) ([]*model.UserTeamIDPair, error)
        + TeamMembersToRemove(teamID *string) ([]*model.TeamMember, error)
        + Update(group *model.Group) (*model.Group, error)
        + UpdateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, error)
        + UpsertMember(groupID string, userID string) (*model.GroupMember, error)
        + UpsertMembers(groupID string, userIDs []string) ([]*model.GroupMember, error)

    }
    class TimerLayerJobStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Cleanup(expiryTime int64, batchSize int) error
        + Delete(id string) (string, error)
        + Get(c request.CTX, id string) (*model.Job, error)
        + GetAllByStatus(c request.CTX, status string) ([]*model.Job, error)
        + GetAllByType(c request.CTX, jobType string) ([]*model.Job, error)
        + GetAllByTypeAndStatus(c request.CTX, jobType string, status string) ([]*model.Job, error)
        + GetAllByTypePage(c request.CTX, jobType string, offset int, limit int) ([]*model.Job, error)
        + GetAllByTypesPage(c request.CTX, jobTypes []string, offset int, limit int) ([]*model.Job, error)
        + GetCountByStatusAndType(status string, jobType string) (int64, error)
        + GetNewestJobByStatusAndType(status string, jobType string) (*model.Job, error)
        + GetNewestJobByStatusesAndType(statuses []string, jobType string) (*model.Job, error)
        + Save(job *model.Job) (*model.Job, error)
        + SaveOnce(job *model.Job) (*model.Job, error)
        + UpdateOptimistically(job *model.Job, currentStatus string) (bool, error)
        + UpdateStatus(id string, status string) (*model.Job, error)
        + UpdateStatusOptimistically(id string, currentStatus string, newStatus string) (bool, error)

    }
    class TimerLayerLicenseStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Get(c request.CTX, id string) (*model.LicenseRecord, error)
        + GetAll() ([]*model.LicenseRecord, error)
        + Save(license *model.LicenseRecord) error

    }
    class TimerLayerLinkMetadataStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Get(url string, timestamp int64) (*model.LinkMetadata, error)
        + Save(linkMetadata *model.LinkMetadata) (*model.LinkMetadata, error)

    }
    class TimerLayerNotifyAdminStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + DeleteBefore(trial bool, now int64) error
        + Get(trial bool) ([]*model.NotifyAdminData, error)
        + GetDataByUserIdAndFeature(userId string, feature model.MattermostFeature) ([]*model.NotifyAdminData, error)
        + Save(data *model.NotifyAdminData) (*model.NotifyAdminData, error)
        + Update(userId string, requiredPlan string, requiredFeature model.MattermostFeature, now int64) error

    }
    class TimerLayerOAuthStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + DeleteApp(id string) error
        + GetAccessData(token string) (*model.AccessData, error)
        + GetAccessDataByRefreshToken(token string) (*model.AccessData, error)
        + GetAccessDataByUserForApp(userID string, clientId string) ([]*model.AccessData, error)
        + GetApp(id string) (*model.OAuthApp, error)
        + GetAppByUser(userID string, offset int, limit int) ([]*model.OAuthApp, error)
        + GetApps(offset int, limit int) ([]*model.OAuthApp, error)
        + GetAuthData(code string) (*model.AuthData, error)
        + GetAuthorizedApps(userID string, offset int, limit int) ([]*model.OAuthApp, error)
        + GetPreviousAccessData(userID string, clientId string) (*model.AccessData, error)
        + PermanentDeleteAuthDataByUser(userID string) error
        + RemoveAccessData(token string) error
        + RemoveAllAccessData() error
        + RemoveAuthData(code string) error
        + RemoveAuthDataByClientId(clientId string, userId string) error
        + RemoveAuthDataByUserId(userId string) error
        + SaveAccessData(accessData *model.AccessData) (*model.AccessData, error)
        + SaveApp(app *model.OAuthApp) (*model.OAuthApp, error)
        + SaveAuthData(authData *model.AuthData) (*model.AuthData, error)
        + UpdateAccessData(accessData *model.AccessData) (*model.AccessData, error)
        + UpdateApp(app *model.OAuthApp) (*model.OAuthApp, error)

    }
    class TimerLayerOutgoingOAuthConnectionStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + DeleteConnection(c request.CTX, id string) error
        + GetConnection(c request.CTX, id string) (*model.OutgoingOAuthConnection, error)
        + GetConnections(c request.CTX, filters model.OutgoingOAuthConnectionGetConnectionsFilter) ([]*model.OutgoingOAuthConnection, error)
        + SaveConnection(c request.CTX, conn *model.OutgoingOAuthConnection) (*model.OutgoingOAuthConnection, error)
        + UpdateConnection(c request.CTX, conn *model.OutgoingOAuthConnection) (*model.OutgoingOAuthConnection, error)

    }
    class TimerLayerPluginStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + CompareAndDelete(keyVal *model.PluginKeyValue, oldValue []byte) (bool, error)
        + CompareAndSet(keyVal *model.PluginKeyValue, oldValue []byte) (bool, error)
        + Delete(pluginID string, key string) error
        + DeleteAllExpired() error
        + DeleteAllForPlugin(PluginID string) error
        + Get(pluginID string, key string) (*model.PluginKeyValue, error)
        + List(pluginID string, page int, perPage int) ([]string, error)
        + SaveOrUpdate(keyVal *model.PluginKeyValue) (*model.PluginKeyValue, error)
        + SetWithOptions(pluginID string, key string, value []byte, options model.PluginKVSetOptions) (bool, error)

    }
    class TimerLayerPostAcknowledgementStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Delete(acknowledgement *model.PostAcknowledgement) error
        + Get(postID string, userID string) (*model.PostAcknowledgement, error)
        + GetForPost(postID string) ([]*model.PostAcknowledgement, error)
        + GetForPosts(postIds []string) ([]*model.PostAcknowledgement, error)
        + Save(postID string, userID string, acknowledgedAt int64) (*model.PostAcknowledgement, error)

    }
    class TimerLayerPostPersistentNotificationStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Delete(postIds []string) error
        + DeleteByChannel(channelIds []string) error
        + DeleteByTeam(teamIds []string) error
        + DeleteExpired(maxSentCount int16) error
        + Get(params model.GetPersistentNotificationsPostsParams) ([]*model.PostPersistentNotifications, error)
        + GetSingle(postID string) (*model.PostPersistentNotifications, error)
        + UpdateLastActivity(postIds []string) error

    }
    class TimerLayerPostPriorityStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + GetForPost(postId string) (*model.PostPriority, error)
        + GetForPosts(ids []string) ([]*model.PostPriority, error)

    }
    class TimerLayerPostStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + AnalyticsPostCount(options *model.PostCountOptions) (int64, error)
        + AnalyticsPostCountsByDay(options *model.AnalyticsPostCountsOptions) (model.AnalyticsRows, error)
        + AnalyticsUserCountsWithPostsByDay(teamID string) (model.AnalyticsRows, error)
        + ClearCaches() 
        + Delete(rctx request.CTX, postID string, timestamp int64, deleteByID string) error
        + Get(ctx context.Context, id string, opts model.GetPostsOptions, userID string, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetDirectPostParentsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.DirectPostForExport, error)
        + GetEditHistoryForPost(postId string) ([]*model.Post, error)
        + GetEtag(channelID string, allowFromCache bool, collapsedThreads bool) string
        + GetFlaggedPosts(userID string, offset int, limit int) (*model.PostList, error)
        + GetFlaggedPostsForChannel(userID string, channelID string, offset int, limit int) (*model.PostList, error)
        + GetFlaggedPostsForTeam(userID string, teamID string, offset int, limit int) (*model.PostList, error)
        + GetMaxPostSize() int
        + GetNthRecentPostTime(n int64) (int64, error)
        + GetOldest() (*model.Post, error)
        + GetOldestEntityCreationTime() (int64, error)
        + GetParentsForExportAfter(limit int, afterID string, includeArchivedChannels bool) ([]*model.PostForExport, error)
        + GetPostAfterTime(channelID string, timestamp int64, collapsedThreads bool) (*model.Post, error)
        + GetPostIdAfterTime(channelID string, timestamp int64, collapsedThreads bool) (string, error)
        + GetPostIdBeforeTime(channelID string, timestamp int64, collapsedThreads bool) (string, error)
        + GetPostReminderMetadata(postID string) (*store.PostReminderMetadata, error)
        + GetPostReminders(now int64) ([]*model.PostReminder, error)
        + GetPosts(options model.GetPostsOptions, allowFromCache bool, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsAfter(options model.GetPostsOptions, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsBatchForIndexing(startTime int64, startPostID string, limit int) ([]*model.PostForIndexing, error)
        + GetPostsBefore(options model.GetPostsOptions, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsByIds(postIds []string) ([]*model.Post, error)
        + GetPostsByThread(threadID string, since int64) ([]*model.Post, error)
        + GetPostsCreatedAt(channelID string, timestamp int64) ([]*model.Post, error)
        + GetPostsSince(options model.GetPostsSinceOptions, allowFromCache bool, sanitizeOptions <font color=blue>map</font>[string]bool) (*model.PostList, error)
        + GetPostsSinceForSync(options model.GetPostsSinceForSyncOptions, cursor model.GetPostsSinceForSyncCursor, limit int) ([]*model.Post, model.GetPostsSinceForSyncCursor, error)
        + GetRepliesForExport(parentID string) ([]*model.ReplyForExport, error)
        + GetSingle(id string, inclDeleted bool) (*model.Post, error)
        + HasAutoResponsePostByUserSince(options model.GetPostsSinceOptions, userId string) (bool, error)
        + InvalidateLastPostTimeCache(channelID string) 
        + Overwrite(rctx request.CTX, post *model.Post) (*model.Post, error)
        + OverwriteMultiple(posts []*model.Post) ([]*model.Post, int, error)
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + PermanentDeleteByChannel(rctx request.CTX, channelID string) error
        + PermanentDeleteByUser(rctx request.CTX, userID string) error
        + Save(rctx request.CTX, post *model.Post) (*model.Post, error)
        + SaveMultiple(posts []*model.Post) ([]*model.Post, int, error)
        + Search(teamID string, userID string, params *model.SearchParams) (*model.PostList, error)
        + SearchPostsForUser(rctx request.CTX, paramsList []*model.SearchParams, userID string, teamID string, page int, perPage int) (*model.PostSearchResults, error)
        + SetPostReminder(reminder *model.PostReminder) error
        + Update(rctx request.CTX, newPost *model.Post, oldPost *model.Post) (*model.Post, error)

    }
    class TimerLayerPreferenceStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + CleanupFlagsBatch(limit int64) (int64, error)
        + Delete(userID string, category string, name string) error
        + DeleteCategory(userID string, category string) error
        + DeleteCategoryAndName(category string, name string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + Get(userID string, category string, name string) (*model.Preference, error)
        + GetAll(userID string) (model.Preferences, error)
        + GetCategory(userID string, category string) (model.Preferences, error)
        + GetCategoryAndName(category string, nane string) (model.Preferences, error)
        + PermanentDeleteByUser(userID string) error
        + Save(preferences model.Preferences) error

    }
    class TimerLayerProductNoticesStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Clear(notices []string) error
        + ClearOldNotices(currentNotices model.ProductNotices) error
        + GetViews(userID string) ([]model.ProductNoticeViewState, error)
        + View(userID string, notices []string) error

    }
    class TimerLayerReactionStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + BulkGetForPosts(postIds []string) ([]*model.Reaction, error)
        + Delete(reaction *model.Reaction) (*model.Reaction, error)
        + DeleteAllWithEmojiName(emojiName string) error
        + DeleteOrphanedRowsByIds(r *model.RetentionIdsForDeletion) error
        + ExistsOnPost(postId string, emojiName string) (bool, error)
        + GetForPost(postID string, allowFromCache bool) ([]*model.Reaction, error)
        + GetForPostSince(postId string, since int64, excludeRemoteId string, inclDeleted bool) ([]*model.Reaction, error)
        + GetUniqueCountForPost(postId string) (int, error)
        + PermanentDeleteBatch(endTime int64, limit int64) (int64, error)
        + PermanentDeleteByUser(userID string) error
        + Save(reaction *model.Reaction) (*model.Reaction, error)

    }
    class TimerLayerRemoteClusterStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Delete(remoteClusterId string) (bool, error)
        + Get(remoteClusterId string) (*model.RemoteCluster, error)
        + GetAll(filter model.RemoteClusterQueryFilter) ([]*model.RemoteCluster, error)
        + GetByPluginID(pluginID string) (*model.RemoteCluster, error)
        + Save(rc *model.RemoteCluster) (*model.RemoteCluster, error)
        + SetLastPingAt(remoteClusterId string) error
        + Update(rc *model.RemoteCluster) (*model.RemoteCluster, error)
        + UpdateTopics(remoteClusterId string, topics string) (*model.RemoteCluster, error)

    }
    class TimerLayerRetentionPolicyStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + AddChannels(policyId string, channelIds []string) error
        + AddTeams(policyId string, teamIds []string) error
        + Delete(id string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + Get(id string) (*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + GetAll(offset int, limit int) ([]*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + GetChannelPoliciesCountForUser(userID string) (int64, error)
        + GetChannelPoliciesForUser(userID string, offset int, limit int) ([]*model.RetentionPolicyForChannel, error)
        + GetChannels(policyId string, offset int, limit int) (model.ChannelListWithTeamData, error)
        + GetChannelsCount(policyId string) (int64, error)
        + GetCount() (int64, error)
        + GetIdsForDeletionByTableName(tableName string, limit int) ([]*model.RetentionIdsForDeletion, error)
        + GetTeamPoliciesCountForUser(userID string) (int64, error)
        + GetTeamPoliciesForUser(userID string, offset int, limit int) ([]*model.RetentionPolicyForTeam, error)
        + GetTeams(policyId string, offset int, limit int) ([]*model.Team, error)
        + GetTeamsCount(policyId string) (int64, error)
        + Patch(patch *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, error)
        + RemoveChannels(policyId string, channelIds []string) error
        + RemoveTeams(policyId string, teamIds []string) error
        + Save(policy *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, error)

    }
    class TimerLayerRoleStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + AllChannelSchemeRoles() ([]*model.Role, error)
        + ChannelHigherScopedPermissions(roleNames []string) (<font color=blue>map</font>[string]*model.RolePermissions, error)
        + ChannelRolesUnderTeamRole(roleName string) ([]*model.Role, error)
        + Delete(roleID string) (*model.Role, error)
        + Get(roleID string) (*model.Role, error)
        + GetAll() ([]*model.Role, error)
        + GetByName(ctx context.Context, name string) (*model.Role, error)
        + GetByNames(names []string) ([]*model.Role, error)
        + PermanentDeleteAll() error
        + Save(role *model.Role) (*model.Role, error)

    }
    class TimerLayerSchemeStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + CountByScope(scope string) (int64, error)
        + CountWithoutPermission(scope string, permissionID string, roleScope model.RoleScope, roleType model.RoleType) (int64, error)
        + Delete(schemeID string) (*model.Scheme, error)
        + Get(schemeID string) (*model.Scheme, error)
        + GetAllPage(scope string, offset int, limit int) ([]*model.Scheme, error)
        + GetByName(schemeName string) (*model.Scheme, error)
        + PermanentDeleteAll() error
        + Save(scheme *model.Scheme) (*model.Scheme, error)

    }
    class TimerLayerSessionStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + AnalyticsSessionCount() (int64, error)
        + Cleanup(expiryTime int64, batchSize int64) error
        + Get(c request.CTX, sessionIDOrToken string) (*model.Session, error)
        + GetSessions(c request.CTX, userID string) ([]*model.Session, error)
        + GetSessionsExpired(thresholdMillis int64, mobileOnly bool, unnotifiedOnly bool) ([]*model.Session, error)
        + GetSessionsWithActiveDeviceIds(userID string) ([]*model.Session, error)
        + PermanentDeleteSessionsByUser(teamID string) error
        + Remove(sessionIDOrToken string) error
        + RemoveAllSessions() error
        + Save(c request.CTX, session *model.Session) (*model.Session, error)
        + UpdateDeviceId(id string, deviceID string, expiresAt int64) (string, error)
        + UpdateExpiredNotify(sessionid string, notified bool) error
        + UpdateExpiresAt(sessionID string, timestamp int64) error
        + UpdateLastActivityAt(sessionID string, timestamp int64) error
        + UpdateProps(session *model.Session) error
        + UpdateRoles(userID string, roles string) (string, error)

    }
    class TimerLayerSharedChannelStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Delete(channelId string) (bool, error)
        + DeleteRemote(remoteId string) (bool, error)
        + Get(channelId string) (*model.SharedChannel, error)
        + GetAll(offset int, limit int, opts model.SharedChannelFilterOpts) ([]*model.SharedChannel, error)
        + GetAllCount(opts model.SharedChannelFilterOpts) (int64, error)
        + GetAttachment(fileId string, remoteId string) (*model.SharedChannelAttachment, error)
        + GetRemote(id string) (*model.SharedChannelRemote, error)
        + GetRemoteByIds(channelId string, remoteId string) (*model.SharedChannelRemote, error)
        + GetRemoteForUser(remoteId string, userId string) (*model.RemoteCluster, error)
        + GetRemotes(opts model.SharedChannelRemoteFilterOpts) ([]*model.SharedChannelRemote, error)
        + GetRemotesStatus(channelId string) ([]*model.SharedChannelRemoteStatus, error)
        + GetSingleUser(userID string, channelID string, remoteID string) (*model.SharedChannelUser, error)
        + GetUsersForSync(filter model.GetUsersForSyncFilter) ([]*model.User, error)
        + GetUsersForUser(userID string) ([]*model.SharedChannelUser, error)
        + HasChannel(channelID string) (bool, error)
        + HasRemote(channelID string, remoteId string) (bool, error)
        + Save(sc *model.SharedChannel) (*model.SharedChannel, error)
        + SaveAttachment(remote *model.SharedChannelAttachment) (*model.SharedChannelAttachment, error)
        + SaveRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + SaveUser(remote *model.SharedChannelUser) (*model.SharedChannelUser, error)
        + Update(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UpdateAttachmentLastSyncAt(id string, syncTime int64) error
        + UpdateRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + UpdateRemoteCursor(id string, cursor model.GetPostsSinceForSyncCursor) error
        + UpdateUserLastSyncAt(userID string, channelID string, remoteID string) error
        + UpsertAttachment(remote *model.SharedChannelAttachment) (string, error)

    }
    class TimerLayerStatusStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Get(userID string) (*model.Status, error)
        + GetByIds(userIds []string) ([]*model.Status, error)
        + GetTotalActiveUsersCount() (int64, error)
        + ResetAll() error
        + SaveOrUpdate(status *model.Status) error
        + UpdateExpiredDNDStatuses() ([]*model.Status, error)
        + UpdateLastActivityAt(userID string, lastActivityAt int64) error

    }
    class TimerLayerSystemStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Get() (model.StringMap, error)
        + GetByName(name string) (*model.System, error)
        + InsertIfExists(system *model.System) (*model.System, error)
        + PermanentDeleteByName(name string) (*model.System, error)
        + Save(system *model.System) error
        + SaveOrUpdate(system *model.System) error
        + Update(system *model.System) error

    }
    class TimerLayerTeamStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + AnalyticsGetTeamCountForScheme(schemeID string) (int64, error)
        + AnalyticsTeamCount(opts *model.TeamSearch) (int64, error)
        + ClearAllCustomRoleAssignments() error
        + ClearCaches() 
        + Get(id string) (*model.Team, error)
        + GetActiveMemberCount(teamID string, restrictions *model.ViewUsersRestrictions) (int64, error)
        + GetAll() ([]*model.Team, error)
        + GetAllForExportAfter(limit int, afterID string) ([]*model.TeamForExport, error)
        + GetAllPage(offset int, limit int, opts *model.TeamSearch) ([]*model.Team, error)
        + GetAllPrivateTeamListing() ([]*model.Team, error)
        + GetAllTeamListing() ([]*model.Team, error)
        + GetByEmptyInviteID() ([]*model.Team, error)
        + GetByInviteId(inviteID string) (*model.Team, error)
        + GetByName(name string) (*model.Team, error)
        + GetByNames(name []string) ([]*model.Team, error)
        + GetChannelUnreadsForAllTeams(excludeTeamID string, userID string) ([]*model.ChannelUnread, error)
        + GetChannelUnreadsForTeam(teamID string, userID string) ([]*model.ChannelUnread, error)
        + GetCommonTeamIDsForMultipleUsers(userIDs []string) ([]string, error)
        + GetCommonTeamIDsForTwoUsers(userID string, otherUserID string) ([]string, error)
        + GetMany(ids []string) ([]*model.Team, error)
        + GetMember(c request.CTX, teamID string, userID string) (*model.TeamMember, error)
        + GetMembers(teamID string, offset int, limit int, teamMembersGetOptions *model.TeamMembersGetOptions) ([]*model.TeamMember, error)
        + GetMembersByIds(teamID string, userIds []string, restrictions *model.ViewUsersRestrictions) ([]*model.TeamMember, error)
        + GetTeamMembersForExport(userID string) ([]*model.TeamMemberForExport, error)
        + GetTeamsByScheme(schemeID string, offset int, limit int) ([]*model.Team, error)
        + GetTeamsByUserId(userID string) ([]*model.Team, error)
        + GetTeamsForUser(c request.CTX, userID string, excludeTeamID string, includeDeleted bool) ([]*model.TeamMember, error)
        + GetTeamsForUserWithPagination(userID string, page int, perPage int) ([]*model.TeamMember, error)
        + GetTotalMemberCount(teamID string, restrictions *model.ViewUsersRestrictions) (int64, error)
        + GetUserTeamIds(userID string, allowFromCache bool) ([]string, error)
        + GroupSyncedTeamCount() (int64, error)
        + InvalidateAllTeamIdsForUser(userID string) 
        + MigrateTeamMembers(fromTeamID string, fromUserID string) (<font color=blue>map</font>[string]string, error)
        + PermanentDelete(teamID string) error
        + RemoveAllMembersByTeam(teamID string) error
        + RemoveAllMembersByUser(ctx request.CTX, userID string) error
        + RemoveMember(rctx request.CTX, teamID string, userID string) error
        + RemoveMembers(rctx request.CTX, teamID string, userIds []string) error
        + ResetAllTeamSchemes() error
        + Save(team *model.Team) (*model.Team, error)
        + SaveMember(rctx request.CTX, member *model.TeamMember, maxUsersPerTeam int) (*model.TeamMember, error)
        + SaveMultipleMembers(members []*model.TeamMember, maxUsersPerTeam int) ([]*model.TeamMember, error)
        + SearchAll(opts *model.TeamSearch) ([]*model.Team, error)
        + SearchAllPaged(opts *model.TeamSearch) ([]*model.Team, int64, error)
        + SearchOpen(opts *model.TeamSearch) ([]*model.Team, error)
        + SearchPrivate(opts *model.TeamSearch) ([]*model.Team, error)
        + Update(team *model.Team) (*model.Team, error)
        + UpdateLastTeamIconUpdate(teamID string, curTime int64) error
        + UpdateMember(rctx request.CTX, member *model.TeamMember) (*model.TeamMember, error)
        + UpdateMembersRole(teamID string, userIDs []string) error
        + UpdateMultipleMembers(members []*model.TeamMember) ([]*model.TeamMember, error)
        + UserBelongsToTeams(userID string, teamIds []string) (bool, error)

    }
    class TimerLayerTermsOfServiceStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Get(id string, allowFromCache bool) (*model.TermsOfService, error)
        + GetLatest(allowFromCache bool) (*model.TermsOfService, error)
        + Save(termsOfService *model.TermsOfService) (*model.TermsOfService, error)

    }
    class TimerLayerThreadStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + DeleteMembershipForUser(userId string, postID string) error
        + DeleteMembershipsForChannel(userID string, channelID string) error
        + DeleteOrphanedRows(limit int) (int64, error)
        + Get(id string) (*model.Thread, error)
        + GetMembershipForUser(userId string, postID string) (*model.ThreadMembership, error)
        + GetMembershipsForUser(userId string, teamID string) ([]*model.ThreadMembership, error)
        + GetTeamsUnreadForUser(userID string, teamIDs []string, includeUrgentMentionCount bool) (<font color=blue>map</font>[string]*model.TeamUnread, error)
        + GetThreadFollowers(threadID string, fetchOnlyActive bool) ([]string, error)
        + GetThreadForUser(threadMembership *model.ThreadMembership, extended bool, postPriorityIsEnabled bool) (*model.ThreadResponse, error)
        + GetThreadUnreadReplyCount(threadMembership *model.ThreadMembership) (int64, error)
        + GetThreadsForUser(userId string, teamID string, opts model.GetUserThreadsOpts) ([]*model.ThreadResponse, error)
        + GetTotalThreads(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadMentions(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadThreads(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + GetTotalUnreadUrgentMentions(userId string, teamID string, opts model.GetUserThreadsOpts) (int64, error)
        + MaintainMembership(userID string, postID string, opts store.ThreadMembershipOpts) (*model.ThreadMembership, error)
        + MarkAllAsRead(userID string, threadIds []string) error
        + MarkAllAsReadByChannels(userID string, channelIDs []string) error
        + MarkAllAsReadByTeam(userID string, teamID string) error
        + MarkAsRead(userID string, threadID string, timestamp int64) error
        + PermanentDeleteBatchForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + PermanentDeleteBatchThreadMembershipsForRetentionPolicies(now int64, globalPolicyEndTime int64, limit int64, cursor model.RetentionPolicyCursor) (int64, model.RetentionPolicyCursor, error)
        + UpdateMembership(membership *model.ThreadMembership) (*model.ThreadMembership, error)

    }
    class TimerLayerTokenStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Cleanup(expiryTime int64) 
        + Delete(token string) error
        + GetAllTokensByType(tokenType string) ([]*model.Token, error)
        + GetByToken(token string) (*model.Token, error)
        + RemoveAllTokensByType(tokenType string) error
        + Save(recovery *model.Token) error

    }
    class TimerLayerTrueUpReviewStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + CreateTrueUpReviewStatusRecord(reviewStatus *model.TrueUpReviewStatus) (*model.TrueUpReviewStatus, error)
        + GetTrueUpReviewStatus(dueDate int64) (*model.TrueUpReviewStatus, error)
        + Update(reviewStatus *model.TrueUpReviewStatus) (*model.TrueUpReviewStatus, error)

    }
    class TimerLayerUploadSessionStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Delete(id string) error
        + Get(c request.CTX, id string) (*model.UploadSession, error)
        + GetForUser(userID string) ([]*model.UploadSession, error)
        + Save(session *model.UploadSession) (*model.UploadSession, error)
        + Update(session *model.UploadSession) error

    }
    class TimerLayerUserAccessTokenStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Delete(tokenID string) error
        + DeleteAllForUser(userID string) error
        + Get(tokenID string) (*model.UserAccessToken, error)
        + GetAll(offset int, limit int) ([]*model.UserAccessToken, error)
        + GetByToken(tokenString string) (*model.UserAccessToken, error)
        + GetByUser(userID string, page int, perPage int) ([]*model.UserAccessToken, error)
        + Save(token *model.UserAccessToken) (*model.UserAccessToken, error)
        + Search(term string) ([]*model.UserAccessToken, error)
        + UpdateTokenDisable(tokenID string) error
        + UpdateTokenEnable(tokenID string) error

    }
    class TimerLayerUserStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + AnalyticsActiveCount(timestamp int64, options model.UserCountOptions) (int64, error)
        + AnalyticsActiveCountForPeriod(startTime int64, endTime int64, options model.UserCountOptions) (int64, error)
        + AnalyticsGetExternalUsers(hostDomain string) (bool, error)
        + AnalyticsGetGuestCount() (int64, error)
        + AnalyticsGetInactiveUsersCount() (int64, error)
        + AnalyticsGetSystemAdminCount() (int64, error)
        + AutocompleteUsersInChannel(rctx request.CTX, teamID string, channelID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInChannel, error)
        + ClearAllCustomRoleAssignments() error
        + ClearCaches() 
        + Count(options model.UserCountOptions) (int64, error)
        + DeactivateGuests() ([]string, error)
        + DemoteUserToGuest(userID string) (*model.User, error)
        + Get(ctx context.Context, id string) (*model.User, error)
        + GetAll() ([]*model.User, error)
        + GetAllAfter(limit int, afterID string) ([]*model.User, error)
        + GetAllNotInAuthService(authServices []string) ([]*model.User, error)
        + GetAllProfiles(options *model.UserGetOptions) ([]*model.User, error)
        + GetAllProfilesInChannel(ctx context.Context, channelID string, allowFromCache bool) (<font color=blue>map</font>[string]*model.User, error)
        + GetAllUsingAuthService(authService string) ([]*model.User, error)
        + GetAnyUnreadPostCountForChannel(userID string, channelID string) (int64, error)
        + GetByAuth(authData *string, authService string) (*model.User, error)
        + GetByEmail(email string) (*model.User, error)
        + GetByRemoteID(remoteID string) (*model.User, error)
        + GetByUsername(username string) (*model.User, error)
        + GetChannelGroupUsers(channelID string) ([]*model.User, error)
        + GetEtagForAllProfiles() string
        + GetEtagForProfiles(teamID string) string
        + GetEtagForProfilesNotInTeam(teamID string) string
        + GetForLogin(loginID string, allowSignInWithUsername bool, allowSignInWithEmail bool) (*model.User, error)
        + GetKnownUsers(userID string) ([]string, error)
        + GetMany(ctx context.Context, ids []string) ([]*model.User, error)
        + GetNewUsersForTeam(teamID string, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfileByGroupChannelIdsForUser(userID string, channelIds []string) (<font color=blue>map</font>[string][]*model.User, error)
        + GetProfileByIds(ctx context.Context, userIds []string, options *store.UserGetByIdsOpts, allowFromCache bool) ([]*model.User, error)
        + GetProfiles(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesByUsernames(usernames []string, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfilesInChannel(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesInChannelByAdmin(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesInChannelByStatus(options *model.UserGetOptions) ([]*model.User, error)
        + GetProfilesNotInChannel(teamID string, channelId string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfilesNotInTeam(teamID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetProfilesWithoutTeam(options *model.UserGetOptions) ([]*model.User, error)
        + GetRecentlyActiveUsersForTeam(teamID string, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetSystemAdminProfiles() (<font color=blue>map</font>[string]*model.User, error)
        + GetTeamGroupUsers(teamID string) ([]*model.User, error)
        + GetUnreadCount(userID string, isCRTEnabled bool) (int64, error)
        + GetUnreadCountForChannel(userID string, channelID string) (int64, error)
        + GetUserCountForReport(filter *model.UserReportOptions) (int64, error)
        + GetUserReport(filter *model.UserReportOptions) ([]*model.UserReportQuery, error)
        + GetUsersBatchForIndexing(startTime int64, startFileID string, limit int) ([]*model.UserForIndexing, error)
        + GetUsersWithInvalidEmails(page int, perPage int, restrictedDomains string) ([]*model.User, error)
        + InferSystemInstallDate() (int64, error)
        + InsertUsers(users []*model.User) error
        + InvalidateProfileCacheForUser(userID string) 
        + InvalidateProfilesInChannelCache(channelID string) 
        + InvalidateProfilesInChannelCacheByUser(userID string) 
        + IsEmpty(excludeBots bool) (bool, error)
        + PermanentDelete(userID string) error
        + PromoteGuestToUser(userID string) error
        + RefreshPostStatsForUsers() error
        + ResetAuthDataToEmailForUsers(service string, userIDs []string, includeDeleted bool, dryRun bool) (int, error)
        + ResetLastPictureUpdate(userID string) error
        + Save(rctx request.CTX, user *model.User) (*model.User, error)
        + Search(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchInChannel(channelID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInChannel(teamID string, channelID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchNotInTeam(notInTeamID string, term string, options *model.UserSearchOptions) ([]*model.User, error)
        + SearchWithoutTeam(term string, options *model.UserSearchOptions) ([]*model.User, error)
        + Update(rctx request.CTX, user *model.User, allowRoleUpdate bool) (*model.UserUpdate, error)
        + UpdateAuthData(userID string, service string, authData *string, email string, resetMfa bool) (string, error)
        + UpdateFailedPasswordAttempts(userID string, attempts int) error
        + UpdateLastLogin(userID string, lastLogin int64) error
        + UpdateLastPictureUpdate(userID string) error
        + UpdateMfaActive(userID string, active bool) error
        + UpdateMfaSecret(userID string, secret string) error
        + UpdateNotifyProps(userID string, props <font color=blue>map</font>[string]string) error
        + UpdatePassword(userID string, newPassword string) error
        + UpdateUpdateAt(userID string) (int64, error)
        + VerifyEmail(userID string, email string) (string, error)

    }
    class TimerLayerUserTermsOfServiceStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + Delete(userID string, termsOfServiceId string) error
        + GetByUser(userID string) (*model.UserTermsOfService, error)
        + Save(userTermsOfService *model.UserTermsOfService) (*model.UserTermsOfService, error)

    }
    class TimerLayerWebhookStore << (S,Aquamarine) >> {
        + Root *TimerLayer

        + AnalyticsIncomingCount(teamID string) (int64, error)
        + AnalyticsOutgoingCount(teamID string) (int64, error)
        + ClearCaches() 
        + DeleteIncoming(webhookID string, timestamp int64) error
        + DeleteOutgoing(webhookID string, timestamp int64) error
        + GetIncoming(id string, allowFromCache bool) (*model.IncomingWebhook, error)
        + GetIncomingByChannel(channelID string) ([]*model.IncomingWebhook, error)
        + GetIncomingByTeam(teamID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingByTeamByUser(teamID string, userID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingList(offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetIncomingListByUser(userID string, offset int, limit int) ([]*model.IncomingWebhook, error)
        + GetOutgoing(id string) (*model.OutgoingWebhook, error)
        + GetOutgoingByChannel(channelID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByChannelByUser(channelID string, userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByTeam(teamID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingByTeamByUser(teamID string, userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingList(offset int, limit int) ([]*model.OutgoingWebhook, error)
        + GetOutgoingListByUser(userID string, offset int, limit int) ([]*model.OutgoingWebhook, error)
        + InvalidateWebhookCache(webhook string) 
        + PermanentDeleteIncomingByChannel(channelID string) error
        + PermanentDeleteIncomingByUser(userID string) error
        + PermanentDeleteOutgoingByChannel(channelID string) error
        + PermanentDeleteOutgoingByUser(userID string) error
        + SaveIncoming(webhook *model.IncomingWebhook) (*model.IncomingWebhook, error)
        + SaveOutgoing(webhook *model.OutgoingWebhook) (*model.OutgoingWebhook, error)
        + UpdateIncoming(webhook *model.IncomingWebhook) (*model.IncomingWebhook, error)
        + UpdateOutgoing(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, error)

    }
}
"store.Store" *-- "timerlayer.TimerLayer"
"store.AuditStore" *-- "timerlayer.TimerLayerAuditStore"
"store.BotStore" *-- "timerlayer.TimerLayerBotStore"
"store.ChannelMemberHistoryStore" *-- "timerlayer.TimerLayerChannelMemberHistoryStore"
"store.ChannelStore" *-- "timerlayer.TimerLayerChannelStore"
"store.ClusterDiscoveryStore" *-- "timerlayer.TimerLayerClusterDiscoveryStore"
"store.CommandStore" *-- "timerlayer.TimerLayerCommandStore"
"store.CommandWebhookStore" *-- "timerlayer.TimerLayerCommandWebhookStore"
"store.ComplianceStore" *-- "timerlayer.TimerLayerComplianceStore"
"store.DesktopTokensStore" *-- "timerlayer.TimerLayerDesktopTokensStore"
"store.DraftStore" *-- "timerlayer.TimerLayerDraftStore"
"store.EmojiStore" *-- "timerlayer.TimerLayerEmojiStore"
"store.FileInfoStore" *-- "timerlayer.TimerLayerFileInfoStore"
"store.GroupStore" *-- "timerlayer.TimerLayerGroupStore"
"store.JobStore" *-- "timerlayer.TimerLayerJobStore"
"store.LicenseStore" *-- "timerlayer.TimerLayerLicenseStore"
"store.LinkMetadataStore" *-- "timerlayer.TimerLayerLinkMetadataStore"
"store.NotifyAdminStore" *-- "timerlayer.TimerLayerNotifyAdminStore"
"store.OAuthStore" *-- "timerlayer.TimerLayerOAuthStore"
"store.OutgoingOAuthConnectionStore" *-- "timerlayer.TimerLayerOutgoingOAuthConnectionStore"
"store.PluginStore" *-- "timerlayer.TimerLayerPluginStore"
"store.PostAcknowledgementStore" *-- "timerlayer.TimerLayerPostAcknowledgementStore"
"store.PostPersistentNotificationStore" *-- "timerlayer.TimerLayerPostPersistentNotificationStore"
"store.PostPriorityStore" *-- "timerlayer.TimerLayerPostPriorityStore"
"store.PostStore" *-- "timerlayer.TimerLayerPostStore"
"store.PreferenceStore" *-- "timerlayer.TimerLayerPreferenceStore"
"store.ProductNoticesStore" *-- "timerlayer.TimerLayerProductNoticesStore"
"store.ReactionStore" *-- "timerlayer.TimerLayerReactionStore"
"store.RemoteClusterStore" *-- "timerlayer.TimerLayerRemoteClusterStore"
"store.RetentionPolicyStore" *-- "timerlayer.TimerLayerRetentionPolicyStore"
"store.RoleStore" *-- "timerlayer.TimerLayerRoleStore"
"store.SchemeStore" *-- "timerlayer.TimerLayerSchemeStore"
"store.SessionStore" *-- "timerlayer.TimerLayerSessionStore"
"store.SharedChannelStore" *-- "timerlayer.TimerLayerSharedChannelStore"
"store.StatusStore" *-- "timerlayer.TimerLayerStatusStore"
"store.SystemStore" *-- "timerlayer.TimerLayerSystemStore"
"store.TeamStore" *-- "timerlayer.TimerLayerTeamStore"
"store.TermsOfServiceStore" *-- "timerlayer.TimerLayerTermsOfServiceStore"
"store.ThreadStore" *-- "timerlayer.TimerLayerThreadStore"
"store.TokenStore" *-- "timerlayer.TimerLayerTokenStore"
"store.TrueUpReviewStore" *-- "timerlayer.TimerLayerTrueUpReviewStore"
"store.UploadSessionStore" *-- "timerlayer.TimerLayerUploadSessionStore"
"store.UserAccessTokenStore" *-- "timerlayer.TimerLayerUserAccessTokenStore"
"store.UserStore" *-- "timerlayer.TimerLayerUserStore"
"store.UserTermsOfServiceStore" *-- "timerlayer.TimerLayerUserTermsOfServiceStore"
"store.WebhookStore" *-- "timerlayer.TimerLayerWebhookStore"

"store.AuditStore" <|-- "timerlayer.TimerLayerAuditStore"
"store.BotStore" <|-- "timerlayer.TimerLayerBotStore"
"store.ChannelMemberHistoryStore" <|-- "timerlayer.TimerLayerChannelMemberHistoryStore"
"store.ChannelStore" <|-- "timerlayer.TimerLayerChannelStore"
"store.ClusterDiscoveryStore" <|-- "timerlayer.TimerLayerClusterDiscoveryStore"
"store.CommandStore" <|-- "timerlayer.TimerLayerCommandStore"
"store.CommandWebhookStore" <|-- "timerlayer.TimerLayerCommandWebhookStore"
"store.ComplianceStore" <|-- "timerlayer.TimerLayerComplianceStore"
"store.DesktopTokensStore" <|-- "timerlayer.TimerLayerDesktopTokensStore"
"store.DraftStore" <|-- "timerlayer.TimerLayerDraftStore"
"store.EmojiStore" <|-- "timerlayer.TimerLayerEmojiStore"
"store.FileInfoStore" <|-- "timerlayer.TimerLayerFileInfoStore"
"store.GroupStore" <|-- "timerlayer.TimerLayerGroupStore"
"store.JobStore" <|-- "timerlayer.TimerLayerJobStore"
"store.LicenseStore" <|-- "timerlayer.TimerLayerLicenseStore"
"store.LinkMetadataStore" <|-- "timerlayer.TimerLayerLinkMetadataStore"
"store.NotifyAdminStore" <|-- "timerlayer.TimerLayerNotifyAdminStore"
"store.OAuthStore" <|-- "timerlayer.TimerLayerOAuthStore"
"store.OutgoingOAuthConnectionStore" <|-- "timerlayer.TimerLayerOutgoingOAuthConnectionStore"
"store.PluginStore" <|-- "timerlayer.TimerLayerPluginStore"
"store.PostAcknowledgementStore" <|-- "timerlayer.TimerLayerPostAcknowledgementStore"
"store.PostPersistentNotificationStore" <|-- "timerlayer.TimerLayerPostPersistentNotificationStore"
"store.PostPriorityStore" <|-- "timerlayer.TimerLayerPostPriorityStore"
"store.PostStore" <|-- "timerlayer.TimerLayerPostStore"
"store.PreferenceStore" <|-- "timerlayer.TimerLayerPreferenceStore"
"store.ProductNoticesStore" <|-- "timerlayer.TimerLayerProductNoticesStore"
"store.ReactionStore" <|-- "timerlayer.TimerLayerReactionStore"
"store.RemoteClusterStore" <|-- "timerlayer.TimerLayerRemoteClusterStore"
"store.RetentionPolicyStore" <|-- "timerlayer.TimerLayerRetentionPolicyStore"
"store.RoleStore" <|-- "timerlayer.TimerLayerRoleStore"
"store.SchemeStore" <|-- "timerlayer.TimerLayerSchemeStore"
"store.SessionStore" <|-- "timerlayer.TimerLayerSessionStore"
"store.SharedChannelStore" <|-- "timerlayer.TimerLayerSharedChannelStore"
"store.StatusStore" <|-- "timerlayer.TimerLayerStatusStore"
"hosted_purchase_screening.ScreenTimeStore" <|-- "timerlayer.TimerLayerSystemStore"
"store.SystemStore" <|-- "timerlayer.TimerLayerSystemStore"
"store.TeamStore" <|-- "timerlayer.TimerLayerTeamStore"
"store.TermsOfServiceStore" <|-- "timerlayer.TimerLayerTermsOfServiceStore"
"store.ThreadStore" <|-- "timerlayer.TimerLayerThreadStore"
"store.TokenStore" <|-- "timerlayer.TimerLayerTokenStore"
"store.TrueUpReviewStore" <|-- "timerlayer.TimerLayerTrueUpReviewStore"
"store.UploadSessionStore" <|-- "timerlayer.TimerLayerUploadSessionStore"
"store.UserAccessTokenStore" <|-- "timerlayer.TimerLayerUserAccessTokenStore"
"store.UserStore" <|-- "timerlayer.TimerLayerUserStore"
"store.UserTermsOfServiceStore" <|-- "timerlayer.TimerLayerUserTermsOfServiceStore"
"store.WebhookStore" <|-- "timerlayer.TimerLayerWebhookStore"

namespace users {
    class ErrInvalidPassword << (S,Aquamarine) >> {
        + Error() string
        + Id() string

    }
    class ServiceConfig << (S,Aquamarine) >> {
        + UserStore store.UserStore
        + SessionStore store.SessionStore
        + OAuthStore store.OAuthStore
        + ConfigFn <font color=blue>func</font>() *model.Config
        + LicenseFn <font color=blue>func</font>() *model.License
        + Metrics einterfaces.MetricsInterface
        + Cluster einterfaces.ClusterInterface

    }
    class UserCreateOptions << (S,Aquamarine) >> {
        + Guest bool
        + FromImport bool

    }
    class UserService << (S,Aquamarine) >> {
        + GetProfileImage(user *model.User) ([]byte, bool, error)
        + FileBackend() (filestore.FileBackend, error)
        + ReadFile(path string) ([]byte, error)
        + GetDefaultProfileImage(user *model.User) ([]byte, error)
        + CreateUser(rctx request.CTX, user *model.User, opts UserCreateOptions) (*model.User, error)
        + GetUser(userID string) (*model.User, error)
        + GetUsers(userIDs []string) ([]*model.User, error)
        + GetUserByUsername(username string) (*model.User, error)
        + GetUserByEmail(email string) (*model.User, error)
        + GetUserByRemoteID(remoteID string) (*model.User, error)
        + GetUserByAuth(authData *string, authService string) (*model.User, error)
        + GetUsersFromProfiles(options *model.UserGetOptions) ([]*model.User, error)
        + GetUsersByUsernames(usernames []string, options *model.UserGetOptions) ([]*model.User, error)
        + GetUsersPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, error)
        + GetUsersEtag(restrictionsHash string) string
        + GetUsersByIds(userIDs []string, options *store.UserGetByIdsOpts) ([]*model.User, error)
        + GetUsersInTeam(options *model.UserGetOptions) ([]*model.User, error)
        + GetUsersNotInTeam(teamID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetUsersInTeamPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, error)
        + GetUsersNotInTeamPage(teamID string, groupConstrained bool, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, error)
        + GetUsersInTeamEtag(teamID string, restrictionsHash string) string
        + GetUsersNotInTeamEtag(teamID string, restrictionsHash string) string
        + GetUsersWithoutTeamPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, error)
        + GetUsersWithoutTeam(options *model.UserGetOptions) ([]*model.User, error)
        + UpdateUser(rctx request.CTX, user *model.User, allowRoleUpdate bool) (*model.UserUpdate, error)
        + UpdateUserNotifyProps(userID string, props <font color=blue>map</font>[string]string) error
        + DeactivateAllGuests() ([]string, error)
        + InvalidateCacheForUser(userID string) 
        + GenerateMfaSecret(user *model.User) (*model.MfaSecret, error)
        + ActivateMfa(user *model.User, token string) error
        + DeactivateMfa(user *model.User) error
        + PromoteGuestToUser(user *model.User) error
        + DemoteUserToGuest(user *model.User) (*model.User, error)
        + SanitizeProfile(user *model.User, asAdmin bool) 
        + GetSanitizeOptions(asAdmin bool) <font color=blue>map</font>[string]bool
        + IsUsernameTaken(name string) bool

    }
}

"teams.Users" <|-- "users.UserService"

namespace utils {
    class DueDateWindow << (S,Aquamarine) >> {
        + Start time.Time
        + End time.Time

    }
    class FormattedPostTime << (S,Aquamarine) >> {
        + Time time.Time
        + Year string
        + Month string
        + Day string
        + Hour string
        + Minute string
        + TimeZone string

    }
    interface LicenseValidatorIface  {
        + LicenseFromBytes(licenseBytes []byte) (*model.License, *model.AppError)
        + ValidateLicense(signed []byte) (bool, string)

    }
    class LicenseValidatorImpl << (S,Aquamarine) >> {
        + LicenseFromBytes(licenseBytes []byte) (*model.License, *model.AppError)
        + ValidateLicense(signed []byte) (bool, string)

    }
    class LimitedReaderWithError << (S,Aquamarine) >> {
        + Read(p []byte) (int, error)

    }
    class MergeConfig << (S,Aquamarine) >> {
        + StructFieldFilter StructFieldFilter

    }
    class Range << (S,Aquamarine) >> {
        + Begin int
        + End int

    }
    class RequestCache << (S,Aquamarine) >> {
        + Data []byte
        + Date string
        + Key string

    }
    class notificationRenderer << (S,Aquamarine) >> {
        + RegisterFuncs(reg renderer.NodeRendererFuncRegisterer) 

    }
    class utils.StructFieldFilter << (T, #FF7700) >>  {
    }
    class "<font color=blue>func</font>(reflect.StructField, reflect.Value, reflect.Value) bool" as fontcolorbluefuncfontreflectStructFieldreflectValuereflectValuebool {
        'This class was created so that we can correctly have an alias pointing to this name. Since it contains dots that can break namespaces
    }
}

"utils.LicenseValidatorIface" <|-- "utils.LicenseValidatorImpl"

namespace web {
    class Browser << (S,Aquamarine) >> {
        + LogoSrc string
        + Title string
        + SupportedVersionString string
        + Src string
        + GetLatestString string

    }
    class Context << (S,Aquamarine) >> {
        + App app.AppIface
        + AppContext request.CTX
        + Logger *mlog.Logger
        + Params *Params
        + Err *model.AppError

        + LogAuditRec(rec *audit.Record) 
        + LogAuditRecWithLevel(rec *audit.Record, level mlog.Level) 
        + MakeAuditRecord(event string, initialStatus string) *audit.Record
        + LogAudit(extraInfo string) 
        + LogAuditWithUserId(userId string, extraInfo string) 
        + LogErrorByCode(err *model.AppError) 
        + IsSystemAdmin() bool
        + SessionRequired() 
        + CloudKeyRequired() 
        + RemoteClusterTokenRequired() 
        + MfaRequired() 
        + ExtendSessionExpiryIfNeeded(w http.ResponseWriter, r *http.Request) 
        + RemoveSessionCookie(w http.ResponseWriter, r *http.Request) 
        + SetInvalidParam(parameter string) 
        + SetInvalidParamWithDetails(parameter string, details string) 
        + SetInvalidParamWithErr(parameter string, err error) 
        + SetInvalidURLParam(parameter string) 
        + SetServerBusyError() 
        + SetInvalidRemoteIdError(id string) 
        + SetInvalidRemoteClusterTokenError() 
        + SetJSONEncodingError(err error) 
        + SetCommandNotFoundError() 
        + HandleEtag(etag string, routeName string, w http.ResponseWriter, r *http.Request) bool
        + SetPermissionError(permissions ...*model.Permission) 
        + SetSiteURLHeader(url string) 
        + GetSiteURLHeader() string
        + RequireUserId() *Context
        + RequireTeamId() *Context
        + RequireCategoryId() *Context
        + RequireInviteId() *Context
        + RequireTokenId() *Context
        + RequireThreadId() *Context
        + RequireTimestamp() *Context
        + RequireChannelId() *Context
        + RequireUsername() *Context
        + RequirePostId() *Context
        + RequirePolicyId() *Context
        + RequireAppId() *Context
        + RequireOutgoingOAuthConnectionId() *Context
        + RequireFileId() *Context
        + RequireUploadId() *Context
        + RequireFilename() *Context
        + RequirePluginId() *Context
        + RequireReportId() *Context
        + RequireEmojiId() *Context
        + RequireTeamName() *Context
        + RequireChannelName() *Context
        + SanitizeEmail() *Context
        + RequireCategory() *Context
        + RequireService() *Context
        + RequirePreferenceName() *Context
        + RequireEmojiName() *Context
        + RequireHookId() *Context
        + RequireCommandId() *Context
        + RequireJobId() *Context
        + RequireJobType() *Context
        + RequireRoleId() *Context
        + RequireSchemeId() *Context
        + RequireRoleName() *Context
        + RequireGroupId() *Context
        + RequireRemoteId() *Context
        + RequireSyncableId() *Context
        + RequireSyncableType() *Context
        + RequireBotUserId() *Context
        + RequireInvoiceId() *Context
        + GetRemoteID(r *http.Request) string

    }
    class Handler << (S,Aquamarine) >> {
        + Srv *app.Server
        + HandleFunc <font color=blue>func</font>(*Context, http.ResponseWriter, *http.Request) 
        + HandlerName string
        + RequireSession bool
        + RequireCloudKey bool
        + RequireRemoteClusterToken bool
        + TrustRequester bool
        + RequireMfa bool
        + IsStatic bool
        + IsLocal bool
        + DisableWhenBusy bool
        + FileAPI bool

        + ServeHTTP(w http.ResponseWriter, r *http.Request) 

    }
    class MattermostApp << (S,Aquamarine) >> {
        + LogoSrc string
        + Title string
        + SupportedVersionString string
        + Label string
        + Link string
        + InstallGuide string
        + InstallGuideLink string

    }
    class Params << (S,Aquamarine) >> {
        + UserId string
        + TeamId string
        + InviteId string
        + TokenId string
        + ThreadId string
        + Timestamp int64
        + TimeRange string
        + ChannelId string
        + PostId string
        + PolicyId string
        + FileId string
        + Filename string
        + UploadId string
        + PluginId string
        + CommandId string
        + HookId string
        + ReportId string
        + EmojiId string
        + AppId string
        + Email string
        + Username string
        + TeamName string
        + ChannelName string
        + PreferenceName string
        + EmojiName string
        + Category string
        + Service string
        + JobId string
        + JobType string
        + ActionId string
        + RoleId string
        + RoleName string
        + SchemeId string
        + Scope string
        + GroupId string
        + Page int
        + PerPage int
        + LogsPerPage int
        + Permanent bool
        + RemoteId string
        + SyncableId string
        + SyncableType model.GroupSyncableType
        + BotUserId string
        + Q string
        + IsLinked *bool
        + IsConfigured *bool
        + NotAssociatedToTeam string
        + NotAssociatedToChannel string
        + Paginate *bool
        + IncludeMemberCount bool
        + IncludeMemberIDs bool
        + NotAssociatedToGroup string
        + ExcludeDefaultChannels bool
        + LimitAfter int
        + LimitBefore int
        + GroupIDs string
        + IncludeTotalCount bool
        + IncludeDeleted bool
        + FilterAllowReference bool
        + FilterArchived bool
        + FilterParentTeamPermitted bool
        + CategoryId string
        + ExportName string
        + ExcludePolicyConstrained bool
        + GroupSource model.GroupSource
        + FilterHasMember string
        + IncludeChannelMemberCount string
        + OutgoingOAuthConnectionID string
        + InvoiceId string

    }
    class SystemBrowser << (S,Aquamarine) >> {
        + LogoSrc string
        + Title string
        + SupportedVersionString string
        + LabelOpen string
        + LinkOpen string
        + LinkMakeDefault string
        + OrString string
        + MakeDefaultString string

    }
    class Web << (S,Aquamarine) >> {
        + MainRouter *mux.Router

        + NewHandler(h <font color=blue>func</font>(*Context, http.ResponseWriter, *http.Request) ) http.Handler
        + NewStaticHandler(h <font color=blue>func</font>(*Context, http.ResponseWriter, *http.Request) ) http.Handler
        + APIHandler(h <font color=blue>func</font>(*Context, http.ResponseWriter, *http.Request) ) http.Handler
        + APIHandlerTrustRequester(h <font color=blue>func</font>(*Context, http.ResponseWriter, *http.Request) ) http.Handler
        + APISessionRequired(h <font color=blue>func</font>(*Context, http.ResponseWriter, *http.Request) ) http.Handler
        + InitOAuth() 
        + InitSaml() 
        + InitStatic() 
        + InitWebhooks() 

    }
    class notFoundNoCacheResponseWriter << (S,Aquamarine) >> {
        + WriteHeader(statusCode int) 

    }
    class responseWriterWrapper << (S,Aquamarine) >> {
        + StatusCode() int
        + WriteHeader(statusCode int) 
        + Write(data []byte) (int, error)
        + Hijack() (net.Conn, *bufio.ReadWriter, error)
        + Flush() 

    }
    class web.OriginClient << (T, #FF7700) >>  {
    }
}
"http.ResponseWriter" *-- "web.notFoundNoCacheResponseWriter"
"http.ResponseWriter" *-- "web.responseWriterWrapper"


namespace wsapi {
    class API << (S,Aquamarine) >> {
        + App *app.App
        + Router *platform.WebSocketRouter

        + InitStatus() 
        + InitSystem() 
        + InitUser() 
        + APIWebSocketHandler(wh <font color=blue>func</font>(*model.WebSocketRequest) (<font color=blue>map</font>[string]any, *model.AppError)) webSocketHandler

    }
    class webSocketHandler << (S,Aquamarine) >> {
        + ServeWebSocket(conn *platform.WebConn, r *model.WebSocketRequest) 

    }
}

"platform.webSocketHandler" <|-- "wsapi.webSocketHandler"

"__builtin__.[]string" #.. "sqlstore.jsonArray"
"__builtin__.int" #.. "app.MentionType"
"__builtin__.int" #.. "app.TokenLocation"
"__builtin__.int" #.. "app.pluginInstallationStrategy"
"__builtin__.int" #.. "sqlstore.selectType"
"__builtin__.int64" #.. "slashcommands.UserError"
"__builtin__.string" #.. "api4.APIHandlerOption"
"__builtin__.string" #.. "api4.filterType"
"__builtin__.string" #.. "app.MentionableID"
"__builtin__.string" #.. "app.notificationType"
"__builtin__.string" #.. "app.notifyPropsReason"
"__builtin__.string" #.. "app.statusReason"
"__builtin__.string" #.. "sqlstore.contextValue"
"__builtin__.string" #.. "sqlstore.jsonKeyPath"
"__builtin__.string" #.. "sqlstore.jsonStringVal"
"__builtin__.string" #.. "sqlstore.migrationDirection"
"__builtin__.string" #.. "sqlstore.storeContextKey"
"__builtin__.string" #.. "web.OriginClient"
"api4.fontcolorbluefuncfontContexthttpResponseWriterhttpRequest" #.. "api4.handlerFunc"
"api4.webContext" #.. "api4.Context"
"app.<font color=blue>func</font>() []AppOption" #.. "app.AppOptionCreator"
"app.<font color=blue>func</font>(*App) " #.. "app.AppOption"
"app.<font color=blue>func</font>(*Server) error" #.. "app.Option"
"app.<font color=blue>map</font>[string][]MentionableID" #.. "app.MentionKeywords"
"app.[]permissionTransformation" #.. "app.permissionsMap"
"app.importsReactionImportData" #.. "app.ReactionImportData"
"platform.<font color=blue>func</font>(*PlatformService) error" #.. "platform.Option"
"platform.<font color=blue>func</font>(*mockSharedChannelService) " #.. "platform.MockOptionSharedChannelService"
"searchtest.modelChannelList" #.. "searchtest.ByChannelDisplayName"
"sqlstore.[]*group" #.. "sqlstore.groups"
"sqlstore.[]*groupWithSchemeAdmin" #.. "sqlstore.groupsWithSchemeAdmin"
"sqlstore.[]allChannelMember" #.. "sqlstore.allChannelMembers"
"sqlstore.[]channelMemberWithSchemeRoles" #.. "sqlstore.channelMemberWithSchemeRolesList"
"sqlstore.[]channelMemberWithTeamWithSchemeRoles" #.. "sqlstore.channelMemberWithTeamWithSchemeRolesList"
"sqlstore.[]groupAssociatedToChannelWithSchemeAdmin" #.. "sqlstore.groupsAssociatedToChannelWithSchemeAdmin"
"sqlstore.[]teamMemberWithSchemeRoles" #.. "sqlstore.teamMemberWithSchemeRolesList"
"storetest.modelFileInfo" #.. "storetest.byFileInfoId"
"storetest.modelPost" #.. "storetest.byPostId"
"storetest.modelStatus" #.. "storetest.ByUserId"
"storetest.modelChannelList" #.. "storetest.ByChannelDisplayName"
"utils.fontcolorbluefuncfontreflectStructFieldreflectValuereflectValuebool" #.. "utils.StructFieldFilter"
@enduml


```